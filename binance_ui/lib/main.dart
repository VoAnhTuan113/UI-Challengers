// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:binance_ui/colorset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PLEX',
      ),
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              // appbar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: BinanceAppBar(),
              ),
              // greetings + login
              SigninArea(),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 0.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.white.withOpacity(0.1),
              ),
              // coin list
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15, right: 15,),
                child: CoinListHeader(),
              ),
              // coin list real
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15,),
                child: CoinList(),
              )),
              // bottom bar
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget BinanceAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // logo
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            height: 30,
            width: 30,
            image: AssetImage(
              'assets/images/Group 1.png',
            ),
          ),
        ),
        Row(
          children: [
            // search
            Icon(
              Icons.search,
              color: activeIconColor,
              size: 20,
            ),
            SizedBox(
              width: 15,
            ),
            // scan
            Icon(
              Icons.qr_code_scanner,
              color: activeIconColor,
              size: 20,
            ),
            SizedBox(
              width: 15,
            ),
            // pay
            Icon(
              Icons.paypal,
              color: activeIconColor,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }

  Widget SigninArea() {
    return Column(
      children: [
        Row(
          children: [
            // text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Join the World\'s Largest Crypto Exchange',
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // gif
            Image(
              height: 70,
              width: 70,
              image: AssetImage(
                'assets/images/att.NRgd9dQJuVq4FPB8Cp37nNm3D_3Zy9m-IZAqkikd2WI.gif',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              // Login
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: subTextColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              // Sign Up
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget CoinListHeader() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Watchlist',
              style: TextStyle(
                color: inactiveIconColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Coin',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            // hot
            Container(
              decoration: BoxDecoration(
                color: subTextColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Text(
                  'Hot',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // market cap
            Container(
              decoration: BoxDecoration(
                // color: subTextColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Text(
                  'Market Cap',
                  style: TextStyle(
                    color: inactiveIconColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // price
            Container(
              decoration: BoxDecoration(
                // color: subTextColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image(
                      height: 10,
                      image: AssetImage('assets/icons/Group 18.png'),
                    ),
                  ],
                ),
              ),
            ),
            // 24h change
            Container(
              decoration: BoxDecoration(
                // color: subTextColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      '24H Change',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image(
                      height: 10,
                      image: AssetImage('assets/icons/Group 18.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget CoinCard({
      required String icon,
      required String name,
      required String shortName,
      required String valueDiff,
      required String value,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // coin icon
              ClipOval(
                child: Image(
                  height: 30,
                  image: AssetImage(
                    icon,
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // coin name
                  Text(
                    name,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // short name
                  Text(
                    shortName,
                    style: TextStyle(
                      color: inactiveIconColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // value diff
              Text(
                '${valueDiff}\%',
                style: TextStyle(
                  color: (double.parse(valueDiff) > 0) ? stockUpColor : stockDownColor,
                  fontFamily: 'FF DIN',
                  fontWeight: FontWeight.bold,
                ),
              ),
              // value
              Text(
                value,
                style: TextStyle(
                  color: textColor,
                  fontSize: 10,
                  fontFamily: 'FF DIN',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CoinList() {
    return ListView(
      shrinkWrap: true, 
      children: [
        CoinCard(
          icon: 'assets/icons/Group 10.png',
          name: 'Pixels',
          shortName: 'PIXEL',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 11.png',
          name: 'EOS',
          shortName: 'EOS',
          valueDiff: '-15.87',
          value: '\$0.4547',
        ),
        CoinCard(
          icon: 'assets/icons/Group 12.png',
          name: 'Bitcoin Cash',
          shortName: 'BCH',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 13.png',
          name: 'Ripple',
          shortName: 'XRP',
          valueDiff: '+9.56',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 14.png',
          name: 'BNB',
          shortName: 'BNB',
          valueDiff: '-9.78',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 15.png',
          name: 'Dogecoin',
          shortName: 'DOGE',
          valueDiff: '+19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 16.png',
          name: 'Bitcoin',
          shortName: 'BTC',
          valueDiff: '-3.58',
          value: '\$55,946.99',
        ),
        CoinCard(
          icon: 'assets/icons/Group 17.png',
          name: 'Etherium',
          shortName: 'ETH',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 20.png',
          name: 'Phucta',
          shortName: 'PHX',
          valueDiff: '+197.81',
          value: '\$127,870.19',
        ),
        CoinCard(
          icon: 'assets/icons/Group 10.png',
          name: 'Pixels',
          shortName: 'PIXEL',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 10.png',
          name: 'Pixels',
          shortName: 'PIXEL',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 11.png',
          name: 'EOS',
          shortName: 'EOS',
          valueDiff: '-15.87',
          value: '\$0.4547',
        ),
        CoinCard(
          icon: 'assets/icons/Group 12.png',
          name: 'Bitcoin Cash',
          shortName: 'BCH',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 13.png',
          name: 'Ripple',
          shortName: 'XRP',
          valueDiff: '+9.56',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 14.png',
          name: 'BNB',
          shortName: 'BNB',
          valueDiff: '-9.78',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 15.png',
          name: 'Dogecoin',
          shortName: 'DOGE',
          valueDiff: '+19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 16.png',
          name: 'Bitcoin',
          shortName: 'BTC',
          valueDiff: '-3.58',
          value: '\$55,946.99',
        ),
        CoinCard(
          icon: 'assets/icons/Group 17.png',
          name: 'Etherium',
          shortName: 'ETH',
          valueDiff: '-19.58',
          value: '\$0.1688',
        ),
        CoinCard(
          icon: 'assets/icons/Group 20.png',
          name: 'Phucta',
          shortName: 'PHX',
          valueDiff: '+197.81',
          value: '\$127,870.19',
        ),
      ],
    );
  }

  Widget BottomBar() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // normal bottom nav
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border(top: BorderSide(width: 0.5, color: textColor.withOpacity(0.1))),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // markets
                Column(
                  children: [
                    Icon(Icons.leaderboard, color: activeIconColor,),
                    Text(
                      'Markets',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // square
                Column(
                  children: [
                    Icon(Icons.connected_tv, color: inactiveIconColor,),
                    Text(
                      'Square',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // blank gap
                Column(
                  children: [
                    Icon(Icons.leaderboard, color: activeIconColor.withOpacity(0),),
                    Text(
                      '',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // discover
                Column(
                  children: [
                    Icon(Icons.diamond, color: inactiveIconColor,),
                    Text(
                      'Discover',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // porfolio
                Column(
                  children: [
                    Icon(Icons.book, color: inactiveIconColor,),
                    Text(
                      'Portfolio',
                      style: TextStyle(
                        color: inactiveIconColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // trade button
        Positioned(
          top: -10,
          left: 0, right: 0,
          child: Image(
            height: 50,
            image: AssetImage('assets/icons/Group 19.png'),
          ),
        ),
      ],
    );
  }
}
