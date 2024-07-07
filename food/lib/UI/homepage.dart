// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lịch myDTU',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 207, 15, 15),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 15, 15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // lịch ngày
                    Row(
                      children: [
                        Text(
                          'Lịch Ngày',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    // thanh chia
                    Container(
                      height: 17,
                      width: 3,
                      color: Colors.white,
                    ),

                    //Cập nhật lịch
                    Row(
                      children: [
                        Text(
                          'Cập Nhật Lịch',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // danh sách môn học
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 5, left: 5, top: 5),
                        child: DateTime(context, date: 'Thứ Hai, 1/07/2024'),
                      ),

                      // card 0
                      SubjectCard(
                        subject: 'Lịch Sử Đảng Cộng Sản Việt Nam',
                        time: Icon(Icons.sunny),
                        subjectClass: 'HIS 362 SE',
                        room: '510',
                        campus: 'K7/25 Quang Trung',
                        classMode: 'Lớp học tập trung',
                        instructor: 'HOÀNG THỊ KIM OANH',
                        startTime: '7:00',
                        endTime: '10:00',
                      ),

                      // card 1
                      SubjectCard(
                        subject: 'Kỹ Thuật Thương Mại Điện Tử',
                        time: Icon(Icons.cloud),
                        subjectClass: 'IS 385 SA',
                        room: '301',
                        campus: 'Hòa Khánh Nam - Tòa Nhà G',
                        classMode: 'Lớp học tập trung',
                        instructor: 'NGUYỄN THỊ THANH PHƯƠNG',
                        startTime: '13:00',
                        endTime: '15:00',
                      ),

                      // card 2
                      SubjectCard(
                        subject: 'Software Process & Quality Management',
                        time: Icon(Icons.mode_night),
                        subjectClass: 'CMU-SE 433 SCIS',
                        room: '802',
                        campus: '254 Nguyễn Văn Linh',
                        classMode: 'Lớp học tập trung',
                        instructor: 'NGUYỄN QUANG VŨ',
                        startTime: '17:45',
                        endTime: '21:00',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SubjectCard({
    required String subject,
    required Icon time,
    required String subjectClass,
    required String room,
    required String campus,
    required String classMode,
    required String instructor,
    required String startTime,
    required String endTime,
  }) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(right: 5, left: 5, bottom: 15),
        child: Column(
          children: [
            // gạch ngăn cách
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 207, 15, 15),
            ),
            // Tên môn
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: time,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        subject,
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 15, 15),
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Row thông tin lớp học
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    //thời gian
                    Column(
                      children: [
                        Text(startTime),
                        Expanded(
                          child: Container(
                            height: 20,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 207, 15, 15)
                                  .withOpacity(0.3),
                            ),
                          ),
                        ),
                        Text(endTime),
                      ],
                    ),

                    // thông tin lớp
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lớp Học: ${subjectClass}',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                'Phòng học: $room',
                              ),
                            ),
                            Text('Cơ sở: $campus'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text('Hình thức Giảng dạy: $classMode'),
                            ),
                            Text('Giảng viên: $instructor'),
                          ],
                        ),
                      ),
                    ),

                    // mũi tên >
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Container DateTime(BuildContext context, {required String date}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 207, 15, 15),
      ),
      child: Center(
        child: Text(
          date,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
