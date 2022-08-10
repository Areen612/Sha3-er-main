import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagher/themes/app_colors.dart';

class TourCard extends StatelessWidget {
  const TourCard(
      {Key? key,
      required String image,
      required String title,
      required String subtitle})
      : _image = image,
        _title = title,
        _subTitle = subtitle,
        super(key: key);

  final String _image;
  final String _title;
  final String _subTitle;

  //todo refactor this

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarybg,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300.w,
            //  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            //color: AppColors.red,
            child: Column(
              //* spcify width and hight
              // mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    _image,
                    width: 350.w,
                    height: 300.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  flex: 1,
                  //color: AppColors.bgBlue,
                  // padding: const EdgeInsetsDirectional.fromSTEB(60, 8, 60, 0),
                  child: SizedBox(
                    //color: Colors.amber,
                    width: 350.w,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _title,
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: const Color(0xFF0F1113),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left, //* you added this
                        ),
                        Text(
                          _subTitle,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            color: const Color(0xFF57636C),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
