import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/themes/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

// class DropDownList extends StatefulWidget {
//   const DropDownList({Key? key, void Function(String)? onChanged})
//       : _onChanged = onChanged,
//         super(key: key);

//   @override
//   State<DropDownList> createState() => _DropDownListState();
//   final void Function(String)? _onChanged;
// }

// class _DropDownListState extends State<DropDownList> {
//   String dropdownValue = 'User';
//   // static bool flag = false;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down),
//       elevation: 16,
//       style: TextStyle(color: AppColors.primary),
//       isExpanded: true,
//       //isDense: true,
//       underline: Container(
//         height: 2,
//         color: AppColors.primary,
//       ),
//       onChanged: (String? newValue) {
//         widget._onChanged!(newValue!);
//         setState(() {
//           dropdownValue = newValue;
//           // if (dropdownValue == 'Company') flag = true;
//         });
//       },
//       items: <String>['User', 'Company']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(
//             value,
//             //textAlign: TextAlign.center,
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

class ToggleSwitchCompany extends StatefulWidget {
  const ToggleSwitchCompany({Key? key, void Function(int)? onToggle})
      : _onToggle = onToggle,
        super(key: key);

  @override
  State<ToggleSwitchCompany> createState() => _ToggleSwitchCompanyState();
  final void Function(int)? _onToggle;
}

class _ToggleSwitchCompanyState extends State<ToggleSwitchCompany> {
  final List<bool> isSelected = List.generate(2, (_) => false);
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      initialLabelIndex: 0,
      totalSwitches: 2,
      minWidth: 159.w,
      minHeight: 40.h,
      fontSize: 16.sp,
      //borderColor: [AppColors.primary, AppColors.primary],
      activeBgColor: const [Colors.black],
      activeFgColor: AppColors.white,
      inactiveBgColor: AppColors.white,
      inactiveFgColor: AppColors.black,
      labels: [KeyLang.user.tr(), KeyLang.company.tr()],
      onToggle: (index) {
        widget._onToggle!(index!);
      },
    );
    // return ToggleButtons(
    //   //color: AppTheme.isDark(context) ? AppColors.bgWhite : AppColors.primary,

    //   selectedColor: AppColors.white,
    //   fillColor: AppColors.primary,
    //   borderColor: AppColors.primary,
    //   borderRadius: BorderRadius.circular(5.r),

    //   //constraints: const BoxConstraints.expand(),

    //   children: const <Widget>[
    //     Text(KeyLang.user),
    //     Text(
    //       KeyLang.company,
    //     )
    //   ],
    //   onPressed: (int index) {
    //     widget._onPressed!(index);
    //     setState(() {
    //       isSelected[index] = !isSelected[index];
    //     });
    //   },
    //   isSelected: isSelected,
    //);
  }
}
