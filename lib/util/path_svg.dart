import 'package:flutter_svg/svg.dart';
import 'package:shagher/util/path_icons.dart';
import 'package:shagher/util/path_images.dart';

class PathSvg {
  static final SvgPicture profileIcon = SvgPicture.asset(
    PathIcons.profileIcon,
    width: 50,
    height: 50,
  );
  static final SvgPicture profileDarkIcon = SvgPicture.asset(
    PathIcons.profileDarkIcon,
    width: 25,
    height: 25,
  );
  static final SvgPicture appLogo = SvgPicture.asset(
    PathImages.appLogo,
    width: 25,
    height: 25,
  );
  static final SvgPicture languageIcon = SvgPicture.asset(
    PathIcons.languageIcon,
    width: 25,
    height: 25,
  );
  static final SvgPicture themesIcon = SvgPicture.asset(
    PathIcons.themesIcon,
    width: 25,
    height: 25,
  );
  static final SvgPicture termsAndConditionsIcon = SvgPicture.asset(
    PathIcons.termsAndConditionsIcon,
    width: 25,
    height: 25,
  );
  //  static final SvgPicture saudiArabiaFlagIcon = SvgPicture.asset(
  //   PathIcons.saudiArabiaFlagIcon,
  //   width: 30,
  //   height: 30,
  // );
  //   static final SvgPicture unitedStateFlagIcon = SvgPicture.asset(
  //   PathIcons.unitedStateFlagIcon,
  //   width: 30,
  //   height: 30,
  // );
}
