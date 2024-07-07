// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // column thông tin đăng nhập
                loginInfo(),

                //khoảng trống
                Expanded(
                  child: SizedBox(),
                ),

                // column chức năng khác
                otherFunnction(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox verticalSpace() => SizedBox(height: 10);

  // thông tin đăng nhập
  Widget loginInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text vui lon dang nhap
        Text(
          'Vui lòng nhập thông tin đăng nhập để tiếp tục',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

        // khoảng trống
        verticalSpace(),

        // Username
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //txt thông tin
              Column(
                children: [
                  // txt tên
                  Text(
                    'VÕ ANH TUẤN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // txt id
                  Text('04********84'),
                ],
              ),

              // ảnh tròn vneid
              Container(
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/VNeID_logo.webp.png'),
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),

        // khoảng trống
        verticalSpace(),

        // Txt Password
        Text('Mật khẩu'),

        // khoảng trống
        verticalSpace(),

        // Password
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              // ổ khóa
              Icon(
                Icons.lock_outlined,
                color: Colors.grey,
              ),

              // nhập mật khẩu text field
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nhập mật khẩu',
                    ),
                  ),
                ),
              ),

              // mắt hiển thị mk
              Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // khoảng trống
        verticalSpace(),
        verticalSpace(),

        // button Login
        TextButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 173, 58, 58)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            minimumSize: WidgetStatePropertyAll<Size>(Size.fromHeight(50)),
          ),
          onPressed: () {},
          child: Text(
            'Đăng nhập',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        // khoảng trống
        verticalSpace(),

        // Txt quen pass - doi tai khoan
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // quên mật khẩu
            Text(
              'Quên mật khẩu',
              style: TextStyle(
                color: Color.fromARGB(255, 173, 58, 58),
                fontWeight: FontWeight.bold,
              ),
            ),

            // đổi tài khoản - icon
            Row(
              children: [
                // text
                Text(
                  'Đổi tài khoản',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.refresh,
                  ),
                  color: Color.fromARGB(255, 173, 58, 58),
                ),
              ],
            ),
          ],
        ),

        // Fingerprint
        Row(
          children: [
            //Icon vân tay
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(255, 173, 58, 58).withOpacity(0.3),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fingerprint,
                  color: Color.fromARGB(255, 173, 58, 58),
                ),
              ),
            ),

            //khoảng trống giữa 2 icon và text
            SizedBox(width: 7),

            // text
            Text(
              'Đăng nhập bằng vân tay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // chức năng khác
  Widget otherFunnction() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // các icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // HDSD
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  //icon
                  Icon(Icons.menu_book_outlined),
                  //khoảng trống
                  verticalSpace(),
                  //text
                  Text('Hướng dẫn sử dụng'),
                ],
              ),
            ),

            // Câu hỏi thường gặp
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  //icon
                  Icon(Icons.question_answer_outlined),
                  //khoảng trống
                  verticalSpace(),
                  //text
                  Text('Câu hỏi thường gặp'),
                ],
              ),
            ),

            // Hotline hỗ trợ
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  //icon
                  Icon(Icons.phone_in_talk_outlined),
                  //khoảng trống
                  verticalSpace(),
                  //text
                  Text('Hotline hỗ trợ'),
                ],
              ),
            ),
          ],
        ),

        //khoảng trống
        verticalSpace(),
        verticalSpace(),

        // link chính sách quyền riêng tư
        InkWell(
          onTap: () {
            // Hành động khi nhấn vào link text. Để trống nếu không muốn làm gì.
          },
          child: Text(
            'Chính sách quyền riêng tư',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),

        //khoảng trống
        verticalSpace(),

        // text version
        Text(
          'Phiên bản 2.1.4',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
