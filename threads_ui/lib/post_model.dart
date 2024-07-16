import 'package:flutter/material.dart';

class Post {
  String avatar;
  String tenNguoifDang;
  String time;
  String caption;
  // var hasImage;
  List<String> image;
  int soNguoiLike;
  int soNguoiComment;
  int soNguoiRepost;

  bool? isLiked;

  Post({
    required this.avatar,
    required this.tenNguoifDang,
    required this.time,
    required this.caption,
    // required this.hasImage,
    required this.image,
    required this.soNguoiLike,
    required this.soNguoiComment,
    required this.soNguoiRepost,
    this.isLiked = false,
  });
}