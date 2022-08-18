import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shagher/packages/components/button/simple_btn.dart';
import 'package:shagher/service/theme/app_theme.dart';
import '../../../../language/generated/key_lang.dart';
import '../../../components/loading/app_loading.dart';
import '../../../components/loading/enum_loading.dart';
import '../../../components/space/size_box_height.dart';
import '../../../components/toast/custom_toast.dart';
import '../components/field_email.dart';
import '../components/header_auth.dart';
import '../components/rich_text_auth.dart';
import '../manage_state/auth_service.dart';
import '../model/user_auth.dart';

class ForgotPasswordWidget extends StatelessWidget {
  static const String id = 'ForgotPasswordWidget';
  // * key Form
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  // *  model save data
  static final ModelUserAuth _userAuth = ModelUserAuth();
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Auth Provider
//    final AuthService _auth = Provider.of<AuthService>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _keyForm,
            child: Column(
              children: [
                // * header Auth
                const HeaderAuth(),
                // * hint Reset pass

                Text(
                  KeyLang.hintResetPass.tr(),
                  textAlign: TextAlign.start,
                  style: AppTheme.s1(context).copyWith(height: 1.5),
                ),
                const SBH(h: 20),
                FieldEmail(valueEmail: _userAuth.setEmail),
                const SBH(h: 20),

                // * button
                Center(
                  // child: _auth.isLoading
                  // ? const AppLoading(chooseLoading: ChooseLoading.button)
                  // :
                  child: SimpleBtn(
                    btnTitle: KeyLang.resetPassword, onTap: () {},
                    // onTap: () async {
                    //   if (_keyForm.currentState?.validate() ?? false) {
                    //     _keyForm.currentState?.save();

                    //     FocusScope.of(context).requestFocus(FocusNode());

                    //     bool _result =
                    //         await _auth.resetPassword(data: _userAuth);
                    //     if (_result) {
                    //       Navigator.pop(context);
                    //     } else {
                    //       errorToast(_auth.errorMessage);
                    //     }
                    //   }
                    // },
                  ),
                ),
                const SBH(),
                // *  have Account
                RichTextAuth(
                  fword: KeyLang.haveAccount,
                  sword: KeyLang.login,
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
