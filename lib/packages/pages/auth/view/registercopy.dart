// import 'package:provider/provider.dart';
// import 'package:shagher/packages/components/button/simple_btn.dart';
// import 'package:shagher/packages/components/loading/app_loading.dart';
// import 'package:shagher/packages/components/loading/enum_loading.dart';
// import 'package:shagher/packages/pages/auth/components/company_reg.dart';
// import 'package:shagher/packages/pages/auth/components/field_fname.dart';
// import 'package:shagher/packages/pages/auth/components/field_lname.dart';
// import 'package:shagher/packages/pages/auth/components/toggle_switch.dart';
// import 'package:shagher/packages/pages/auth/manage_state/user_service.dart';
// import 'package:shagher/packages/pages/auth/view/cv.dart';
// import 'package:shagher/service/validotors/app_validators.dart';
// import '../../../../language/generated/key_lang.dart';
// import '../../../components/space/size_box_height.dart';
// import '../components/field_email.dart';
// import '../components/field_pass.dart';
// import '../components/header_auth.dart';
// import '../components/rich_text_auth.dart';
// import '../model/user_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RegisterWidget extends StatefulWidget {
//   static const String id = 'RegisterWidget';
//   const RegisterWidget({Key? key}) : super(key: key);

//   @override
//   State<RegisterWidget> createState() => _PageRegisterState();
// }

// class _PageRegisterState extends State<RegisterWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // * save pass
//     String? pass;
//     // * company flag
//     int? flag = 0;
//     // * key Form
//     final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
//     // *  model save data
//     final ModelUserAuth _userAuth = ModelUserAuth();
//     // * Auth Provider
//     final UserAuthService _auth = Provider.of<UserAuthService>(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20.w),
//         child: Form(
//           key: _keyForm,
//           child: Column(
//             children: [
//               // * Header Auth
//               const HeaderAuth(),
//               ToggleSwitchCompany(onSelected: (index) {
//                 setState(() {
//                   print("$index");
//                   flag = index;
//                 });
//               }),

//               Visibility(
//                 replacement: const RegCompanyColumn(),
//                 child: Column(
//                   children: [
//                     const SBH(),

//                     // * First name
//                     FieldFname(valueFname: _userAuth.setFname),
//                     const SBH(),
//                     // * Last name
//                     FieldLname(valueLname: _userAuth.setLname),
//                     const SBH(),
//                     // * Email
//                     FieldEmail(valueEmail: _userAuth.setEmail),
//                     const SBH(),
//                     // * Password
//                     FieldPass(
//                       onChanged: (value) => pass = value,
//                       helperText: KeyLang.errorPass,
//                     ),
//                     const SBH(),
//                     // * Confirm Password
//                     FieldPass(
//                       onValidators: (value) =>
//                           AppValidators.isEqualPass(value, pass ?? ''),
//                       valuePass: _userAuth.setPass,
//                     ),
//                     const SBH(h: 20),
//                     // * button
//                     Center(
//                       child: _auth.isLoading
//                           ? const AppLoading(
//                               chooseLoading: ChooseLoading.button)
//                           : SimpleBtn(
//                               btnTitle: KeyLang.cont,
//                               onTap: (() {
//                                 if (_keyForm.currentState?.validate() ??
//                                     false) {
//                                   Navigator.pushNamed(context, CvForm.id);
//                                 }
//                               }),
//                             ),
//                     ),
//                     const SBH(h: 20),
//                     // *  have Account
//                     RichTextAuth(
//                       fword: KeyLang.haveAccount,
//                       sword: KeyLang.login,
//                       onTap: () => Navigator.pop(context),
//                     ),
//                   ],
//                 ),
//                 visible: flag == 0 ? true : false,
//                 //_replace(flag),
//               ),
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
