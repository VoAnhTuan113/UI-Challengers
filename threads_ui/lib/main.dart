// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'post_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Post> posts = [
      Post(
        avatar: 'assets/images/image 5.png',
        tenNguoifDang: 'jaydon_culhane',
        time: '1d',
        caption:
            'We love useful stuff, and we love quality writing, that\'s why we send out an editorial email newslet',
        image: [
          'assets/images/image 14.png',
          'assets/images/image 15.png',
          'assets/images/image 16.png',
          'assets/images/image 17.png',
        ],
        soNguoiLike: 236,
        soNguoiComment: 31,
        soNguoiRepost: 17,
      ),
      Post(
        avatar: 'assets/images/image 6.png',
        tenNguoifDang: 'breezythebreaker',
        time: '23h',
        caption:
            'Digital product design news, articles, and resources delivered straight to your inbox.',
        image: [
          'assets/images/image 18.png',
          'assets/images/image 19.png',
        ],
        soNguoiLike: 970,
        soNguoiComment: 121,
        soNguoiRepost: 65,
      ),
      Post(
        avatar: 'assets/images/image 12.png',
        tenNguoifDang: 'sneaker_queen',
        time: '23h',
        caption:
            'I want to talk about the hard stuff people wonder about but maybe are embarassed...',
        image: [
          'assets/images/image 20.png',
          'assets/images/image 21.png',
          'assets/images/image 22.png',
          'assets/images/image 17.png',
        ],
        soNguoiLike: 83,
        soNguoiComment: 5,
        soNguoiRepost: 1,
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(234, 0, 0, 0),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // logo
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/threads_logo.png',
                            height: 40,
                          ),
                        ),
                      ),

                      // nơi nhập trạng thái
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: StatusTextField(),
                      ),

                      // list các posts
                      PostList(
                        posts: posts,
                      ),
                    ],
                  ),
                ),
              ),

              // bottom bar
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget StatusTextField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // avatar
        ClipOval(
          child: Image.asset(
            'assets/images/my_ava.png',
            height: 40,
          ),
        ),
        SizedBox(
          width: 15,
        ),

        // textfield
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // username
            Text(
              'phucx314',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            // what's new
            Text(
              'What\'s new?',
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // other fn
            Row(
              children: [
                Icon(
                  Icons.image_outlined,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.gif_box_outlined,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.keyboard_voice_outlined,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.tag,
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.filter_list_outlined,
                  color: Colors.white30,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget BottomBar() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // home
          Icon(
            Icons.home_rounded,
            color: Colors.white,
          ),

          // search
          Icon(
            TablerIcons.search,
            color: Colors.white30,
          ),

          // add post
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 35,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              color: Colors.white12,
              child: Icon(
                TablerIcons.plus,
                color: Colors.white30,
              ),
            ),
          ),

          // noti
          Icon(
            TablerIcons.heart,
            color: Colors.white30,
          ),

          // profile
          ClipOval(
              child: Image.asset(
            'assets/images/my_ava.png',
            height: 25,
          ))
        ],
      ),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(posts.length, (index) => PostFrame(post: posts[index])),
    );
  }
}

class PostFrame extends StatefulWidget {
  const PostFrame({super.key, required this.post});

  final Post post;

  @override
  State<PostFrame> createState() => _PostFrameState();
}

class _PostFrameState extends State<PostFrame> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.white24),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ava
                ClipOval(
                  child: Image.asset(
                    widget.post.avatar,
                    height: 40,
                  ),
                ),

                // content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // username and time and 'more' button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              children: [
                                // username
                                Text(
                                  widget.post.tenNguoifDang,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                // time
                                Text(
                                  widget.post.time,
                                  style: TextStyle(
                                    color: Colors.white30,
                                  ),
                                ),
                              ],
                            ),

                            // more
                            Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white30,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        // caption
                        Text(
                          widget.post.caption,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // pics and like cmt reposts...
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.post.image.isNotEmpty)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // init blank space
                      SizedBox(
                        width: 15 + 40 + 15,
                      ),

                      // pics
                      ImageList(images: widget.post.image),

                      // end blank space
                      SizedBox(
                        width: -7 + 15,
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 10,
              ),

              // reactions and stuff
              Padding(
                padding: const EdgeInsets.only(left: 15 + 40 + 15),
                child: Row(
                  children: [
                    // likes
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (widget.post.isLiked == false) {
                            widget.post.isLiked = true;
                          } else {
                            widget.post.isLiked = false;
                          }
                        });
                      },
                      child: Row(
                        children: [
                          (widget.post.isLiked == true)
                              ? Icon(
                                  TablerIcons.heart_filled,
                                  color: Colors.redAccent,
                                )
                              : Icon(
                                  TablerIcons.heart,
                                  color: Colors.white70,
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          (widget.post.isLiked == true)
                              ? Text(
                                  (widget.post.soNguoiLike + 1).toString(),
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                  ),
                                )
                              : Text(
                                  (widget.post.soNguoiLike).toString(),
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),

                    // comments
                    Row(
                      children: [
                        Icon(
                          TablerIcons.message_circle,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.post.soNguoiComment
                              .toString(), // đổi qua stateful nó tự thêm 'widget.'
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),

                    // reposts
                    Row(
                      children: [
                        Icon(
                          Icons.repeat_outlined,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.post.soNguoiRepost.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),

                    // send button
                    Icon(
                      TablerIcons.send,
                      color: Colors.white70,
                      size: 19,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageList extends StatelessWidget {
  const ImageList({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(images.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 7),
          child: ClipRRect(
            child: Image.asset(images[index]),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}
