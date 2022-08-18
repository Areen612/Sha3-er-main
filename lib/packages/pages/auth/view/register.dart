import 'package:shagher/packages/components/button/simple_btn.dart';
import 'package:shagher/packages/components/text_field_form/custom_filed.dart';
import 'package:shagher/packages/pages/auth/components/company_reg.dart';
import 'package:shagher/packages/pages/auth/components/toggle_switch.dart';
import 'package:shagher/packages/pages/auth/view/cv.dart';
import 'package:shagher/packages/pages/home/views/body.dart';
import 'package:shagher/service/validotors/app_validators.dart';
import 'package:shagher/util/path_icons.dart';

import '../../../components/loading/app_loading.dart';
import '../../../components/loading/enum_loading.dart';
import '../../../components/toast/custom_toast.dart';
import '../manage_state/auth_service.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../../../../language/generated/key_lang.dart';
import '../../../components/space/size_box_height.dart';
import '../components/field_email.dart';
import '../components/field_pass.dart';
import '../components/header_auth.dart';
import '../components/rich_text_auth.dart';
import '../model/user_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterWidget extends StatefulWidget {
  static const String id = 'RegisterWidget';
  // * key Form
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  // *  model save data
  static final ModelUserAuth _userAuth = ModelUserAuth();
  // * save pass
  static String? pass;
  // * company flag
  static String? flag = 'User';
  static bool rep = false;
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<RegisterWidget> {
  static String? pass;
  static int? flag = 0;
  @override
  Widget build(BuildContext context) {
    // * Auth Provider
    // final AuthService _auth = Provider.of<AuthService>(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: RegisterWidget._keyForm,
          child: Column(
            children: [
              // * Header Auth
              const HeaderAuth(),
              // DropDownList(onChanged: (value) {
              //   setState(() {
              //     flag = value;
              //   });
              // }),
              ToggleSwitchCompany(onToggle: (index) {
                setState(() {
                  flag = index;
                });
              }),

              Visibility(
                replacement: const RegCompanyColumn(),
                child: Column(
                  children: [
                    const SBH(),

                    // * First name
                    CustomField(
                      hint: KeyLang.fname,
                      pIcon: PathIcons.nameTagIcon,
                    ),
                    const SBH(),
                    // * Last name
                    CustomField(
                      hint: KeyLang.lname,
                      pIcon: PathIcons.nameTagIcon,
                    ),
                    const SBH(),
                    // * Email
                    FieldEmail(valueEmail: RegisterWidget._userAuth.setEmail),
                    const SBH(),
                    // * Password
                    FieldPass(onChanged: (value) => pass = value),
                    const SBH(),
                    // * Confirm Password
                    FieldPass(
                      hint: KeyLang.confirmPass,
                      onValidators: (value) => AppValidators.isEqualPass(
                          value, RegisterWidget.pass ?? ''),
                      valuePass: RegisterWidget._userAuth.setPass,
                    ),
                    const SBH(h: 20),
                    // * button
                    Center(
                      //  child: _auth.isLoading
                      // ? const AppLoading(chooseLoading: ChooseLoading.button)
                      // :
                      child: SimpleBtn(
                        btnTitle: KeyLang.cont,
                        onTap: () {
                          Navigator.pushNamed(context, CvForm.id);
                        },
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
                  ],
                ),
                visible: flag == 0 ? true : false,
                //_replace(flag),
              ),
            ],
          ),
        ),
      )),
    );
  }

  // * Navigator Home Page
  void _navHome(BuildContext context) =>
      Navigator.pushNamed(context, HomeWidget.id);

  // bool _replace(String? flag) {
  //   flag == 'Company' ? rep = true : rep = false;
  //   print('$flag  ${RegisterWidget.rep}');
  //   return RegisterWidget.rep;
  // }
}
