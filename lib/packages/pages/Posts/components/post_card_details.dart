import 'package:flutter/material.dart';
import 'package:shagher/packages/components/button/elevated_btn.dart';
import 'package:shagher/packages/components/space/size_box_height.dart';
import 'package:shagher/packages/components/space/size_box_width.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/util/path_images.dart';
import 'package:shagher/widget/post_details_widget.dart';

class PostCardDetails extends StatelessWidget {
  const PostCardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ToDo post service
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListTile(
              leading: const Hero(
                  tag: 'tag_card',
                  child: Image(image: AssetImage(PathImages.profileImage))),
              title: Text('Flutter Developer',
                  style: AppTheme.h6(context)
                      .copyWith(fontWeight: FontWeight.bold)),
              subtitle: Text('Company 1',
                  style: AppTheme.s1(context)
                      .copyWith(fontWeight: FontWeight.w200)),
            ),
          ),
          const SBH(h: 40),
          const PostDetailsWidget(text: 'Description:'),
          const PostDetailsWidget(
            text:
                'description increments by 1 for each child in the container and by 1 for each child in the container and by 1 for each child in the container and by 1 for each child in the container and by 1 for each child',
            all: true,
            textTheme: 'b1',
          ),
          const SBH(h: 50),
          const PostDetailsWidget(text: 'Range Salary:', textTheme: 'h6'),
          const PostDetailsWidget(
            text: '400-600',
            all: true,
            textTheme: 'b1',
          ),
          const SBH(h: 150),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedBtn(
                  title: 'Company Profile',
                  onTap: () {},
                  width: 150,
                ),
                const SBW(w: 20),
                ElevatedBtn(
                  title: 'Apply',
                  onTap: () {},
                  width: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
