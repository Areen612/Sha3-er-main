import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shagher/models/post.dart';

class ManageStatePost extends ChangeNotifier {
  final ModelPost? _post = ModelPost();

  // * create a new state post
  // * get post
  ModelPost? get post => _post;
  // * update post
  // * delete post

}
