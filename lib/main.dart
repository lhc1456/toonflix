import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // flutter는 구글에서 만들었기 때문에 material이 ios 보다 더 좋은 스타일을 가짐
    // ios
    // return CupertinoApp();

    //google
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
              // padding: EdgeInsets.all(10),
              // 수직, 수평 padding 지정
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    // MainAxis : Column의 수직방향
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        // // CrossAxis : Column의 수평방향
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ))),
    );
  }
}
