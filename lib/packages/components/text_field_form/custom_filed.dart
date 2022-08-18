import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final String? _labelText;
  final String? _helperText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initValue,
      cursorColor: _cursorColor,
      keyboardType: _keyboardType,
      maxLines: _maxLines,
      //minLines: null,
      obscureText: _isObscureText,
      textInputAction: TextInputAction.newline,
      //expands: true,
      validator: _onValidator,
      onSaved: _onSaved,
      onChanged: _onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hint?.tr(),
        label: _lable,
        labelText: _labelText,
        helperText: _helperText,
        prefixIcon: Padding(
          padding: EdgeInsets.all(10.h),
          child: _pIcon,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.all(10.h),
          child: _sIcon,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.ceriseRed),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.ceriseRed),
        ),
      ),
    );
  }
}
