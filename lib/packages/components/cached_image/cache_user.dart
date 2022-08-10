import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../util/path_icons.dart';
import '../loading/app_loading.dart';
import '../loading/enum_loading.dart';

class CachedUser extends StatelessWidget {
  // defult image
  const CachedUser({Key? key, String imageUser = PathIcons.profileIcon})
      : _imageUser = imageUser,
        super(key: key);

  final String _imageUser;
  final double _width = 50;
  final double _height = 50;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: _imageUser,
        imageBuilder: (context, imageProvider) {
          return Container(
            width: _width.w,
            height: _height.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider)),
          );
        },
        placeholder: (context, url) => const AppLoading(
              chooseLoading: ChooseLoading.profile,
            ),
        errorWidget: (context, url, error) {
          return Container(
            width: _width.w,
            height: _height.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(PathIcons.profileIcon),
              ),
            ),
          );
        });
  }
}
