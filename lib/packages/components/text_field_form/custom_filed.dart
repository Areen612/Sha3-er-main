import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagher/packages/pages/auth/components/field_decoration.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/util/path_icons.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../themes/app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {Key? key,
      String? initValue,
      Color cursorColor = Colors.lightBlueAccent,
      TextInputType? keyboardType,
      bool isObscureText = false,
      String? hint,
      Widget? pIcon,
      Widget? sIcon,
      Widget? lable,
      String? labelText,
      String? helperText,
      int? maxLines = 1,
      int? minLines = 1,
      String? Function(String?)? onValidator,
      void Function(String?)? onSaved,
      void Function(String)? onChanged})
      : _initValue = initValue,
        _cursorColor = cursorColor,
        _keyboardType = keyboardType,
        _isObscureText = isObscureText,
        _hint = hint,
        _pIcon = pIcon,
        _sIcon = sIcon,
        _lable = lable,
        _labelText = labelText,
        _helperText = helperText,
        _maxLines = maxLines,
        _minLines = minLines,
        _onValidator = onValidator,
        _onSaved = onSaved,
        _onChanged = onChanged,
        super(key: key);

  final String? _initValue;
  final Color? _cursorColor;
  final TextInputType? _keyboardType;
  final bool _isObscureText;
  final String? Function(String?)? _onValidator;
  final void Function(String?)? _onSaved;
  final void Function(String)? _onChanged;

  // * InputDecoration
  final String? _hint;
  final Widget? _pIcon;
  final Widget? _sIcon;
  final Widget? _lable;
  final int? _maxLines;
  final int? _minLines;
  final String? _labelText;
  final String? _helperText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initValue,
      cursorColor: _cursorColor,
      keyboardType: _keyboardType,
      maxLines: _maxLines,
      minLines: _minLines,
      obscureText: _isObscureText,
      textInputAction: TextInputAction.newline,
      validator: _onValidator,
      onSaved: _onSaved,
      onChanged: _onChanged,
      decoration: fieldDecoration(
        context,
        pIcon: _pIcon,
        sIcon: _sIcon,
        labelText: _labelText?.tr(),
        helperText: _helperText?.tr(),
        hint: _hint?.tr(),
      ),
      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //   hintText: _hint?.tr(),
      //   label: _lable,
      //   labelText: _labelText?.tr(),
      //   helperText: _helperText,
      //   prefixIcon: Padding(
      //     padding: EdgeInsets.all(10.h),
      //     child: _pIcon,
      //   ),
      //   suffixIcon: Padding(
      //     padding: EdgeInsets.all(10.h),
      //     child: _sIcon,
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10.r),
      //     borderSide: BorderSide(
      //         color:
      //             AppTheme.isDark(context) ? AppColors.black : AppColors.grey),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10.r),
      //     borderSide: BorderSide(
      //         color:
      //             AppTheme.isDark(context) ? AppColors.grey : AppColors.black),
      //   ),
      //   errorBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10.r),
      //     borderSide: BorderSide(color: AppColors.ceriseRed),
      //   ),
      //   focusedErrorBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10.r),
      //     borderSide: BorderSide(color: AppColors.ceriseRed),
      //   ),
      // ),
    );
  }
}
