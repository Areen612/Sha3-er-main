//import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/packages/components/cached_image/cache_user.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/themes/app_colors.dart';
import 'package:shagher/util/path_icons.dart';
import 'package:shagher/util/path_images.dart';
// import 'package:shagher/util/path_images.dart';
//import 'package:shagher/util/path_svg.dart';
//import 'package:shagher/util/path_svg.dart';

//TODO: profilepicture

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key})
      : //_profileIcon = profileIcon;
        super(key: key);
  //SvgPicture profileIcon = PathSvg.profileIcon
  //final SvgPicture _profileIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.h),
        // TODO:image DB
        // SvgPicture.asset(
        //   PathIcons.profileIcon,
        //   width: 60.w,
        //   height: 60.h,
        // ),
        Image.asset(PathImages.profileImage, width: 100.w, height: 100.h),
        // * CachedUser not working
        const CachedUser(),
        // name user
        Text(
          KeyLang.userName.tr(),
        ),
        Divider(
          color: AppTheme.isDark(context)
              ? AppColors.bgWhite
              : AppColors.black.withOpacity(0.5),
        ),
        //const Padding(padding: EdgeInsets.only(bottom: 100)),
      ],
    );
  }
}
