import 'package:flutter/material.dart';
import 'package:shagher/packages/components/space/size_box_height.dart';
import 'package:shagher/packages/pages/Posts/components/post_card_details.dart';
import 'package:shagher/packages/pages/Posts/models/post.dart';
import 'package:shagher/util/path_images.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.data}) : super(key: key);
  final ModelPost data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 2,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SBH(h: 10),
              ListTile(
                leading: const Hero(
                    tag: 'tag_card',
                    child: Image(image: AssetImage(PathImages.profileImage))),
                title: Text(data.title),
                //subtitle: Text(_company.companyName),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('view post'),
                    onPressed: () => _gotoDetailsPage(context),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _gotoDetailsPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Expanded(
              flex: 2,
              child: PostCardDetails(),
            ),
          ],
        ),
      ),
    ),
  ));
}