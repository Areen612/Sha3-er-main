import 'package:flutter/material.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/packages/components/button/simple_btn.dart';
import 'package:shagher/packages/components/space/size_box_height.dart';
import 'package:shagher/packages/components/text_field_form/custom_filed.dart';
import 'package:shagher/packages/pages/auth/components/toggle_switch.dart';
import 'package:shagher/packages/pages/auth/components/field_email.dart';
import 'package:shagher/packages/pages/auth/components/field_pass.dart';
import 'package:shagher/packages/pages/auth/components/header_auth.dart';
import 'package:shagher/packages/pages/auth/model/user_auth.dart';
import 'package:shagher/service/validotors/app_validators.dart';
import 'package:shagher/util/path_icons.dart';

import 'rich_text_auth.dart';

class RegCompanyColumn extends StatelessWidget {
  const RegCompanyColumn({Key? key}) : super(key: key);
  static final ModelUserAuth _userAuth = ModelUserAuth();
  // * save pass
  static String? pass;
  static String? flag;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SBH(),
        // * Company name
        CustomField(hint: KeyLang.companyname, pIcon: PathIcons.nameTagIcon),
        const SBH(),
        // * Email
        FieldEmail(valueEmail: _userAuth.setEmail),
        const SBH(),
        // * Password
        FieldPass(onChanged: (value) => pass = value),
        const SBH(),
        // * Confirm Password
        FieldPass(
          hint: KeyLang.confirmPass,
          onValidators: (value) => AppValidators.isEqualPass(value, pass ?? ''),
          valuePass: _userAuth.setPass,
        ),
        const SBH(),
        // * Specialty
        CustomField(hint: KeyLang.specialty, pIcon: PathIcons.company),
        const SBH(),
        // * Country
        CustomField(hint: KeyLang.country, pIcon: PathIcons.country),
        const SBH(),
        // * City
        CustomField(hint: KeyLang.city, pIcon: PathIcons.country),
        const SBH(),
        // * Enterprise Owner
        CustomField(hint: KeyLang.enterpriseOwner, pIcon: PathIcons.company),
        const SBH(),
        // * Commercial Address
        CustomField(hint: KeyLang.commercialAddress, pIcon: PathIcons.company),
        const SBH(),
        // * Status
        CustomField(hint: KeyLang.status, pIcon: PathIcons.company),
        const SBH(),
        // * National Invester Number
        CustomField(
            hint: KeyLang.nationalInvestorNumber, pIcon: PathIcons.company),
        const SBH(),
        // * Commercial Number
        CustomField(hint: KeyLang.commercialNumber, pIcon: PathIcons.company),
        const SBH(),
        // * Commercial Name
        CustomField(hint: KeyLang.commercialName, pIcon: PathIcons.company),
        const SBH(h: 20),
        // * button
        Center(
          //  child: _auth.isLoading
          // ? const AppLoading(chooseLoading: ChooseLoading.button)
          // :
          child: SimpleBtn(
            btnTitle: KeyLang.register, onTap: () {},
            // onTap: () async {
            //   if (_keyForm.currentState?.validate() ?? false) {
            //     _keyForm.currentState?.save();
            //     FocusScope.of(context).requestFocus(FocusNode());

            //     User? _user = await _auth.register(data: _userAuth);
            //     if (_user != null) {
            //       _navHome(context);
            //     } else {
            //       errorToast(_auth.errorMessage);
            //     }
            //   }
            // },
          ),
        ),
        const SBH(h: 20),
        // *  have Account
        RichTextAuth(
          fword: KeyLang.haveAccount,
          sword: KeyLang.login,
          onTap: () => Navigator.pop(context),
        ),
        const SBH(h: 20),
      ],
    );
  }
}
