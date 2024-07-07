// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1f2732),
        // thanh trên cùng appbar
        appBar: AppBar(
          backgroundColor: Color(0xFF1f2732),
          //logo app
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
                'assets/images/binance-smart-chain-bsc-seeklogo.png'),
          ),
          // 3 nút bên phải
          actions: [
            //search
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
                color: Colors.white,
              ),
            ),
            // quét qr
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
            ),
            // đăng nhập
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.login,
                color: Colors.white,
              ),
            ),
          ],
        ),
        // phần chính body
        body: SafeArea(
          child: Column(
            children: [
              // banner quảng cáo + 2 nút đn đk
              //

              // banner giới thiệu các tính năng
              //

              // nội dung chính - coins
            ],
          ),
        ),

        //thanh dưới cùng bottom app bar
        bottomNavigationBar: BottomAppBar(
          elevation: double.infinity,
          color: Color(0xFF1f2732),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 0.25,
                color: Colors.grey,
              ),
              BottomNavigationBar(
                backgroundColor: Color(0xFF1f2732),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                items: [
                  //button thị trường
                  BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart),
                    label: 'Thị trường',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: 'Square',
                  ),

                  //button giao dịch
                  BottomNavigationBarItem(
                    icon: Icon(Icons.swap_horiz),
                    label: 'Giao dịch',
                  ),

                  //button khám phá
                  BottomNavigationBarItem(
                    icon: Icon(Icons.diamond),
                    label: 'Khám phá',
                  ),

                  //button danh mục
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: 'Danh mục',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
