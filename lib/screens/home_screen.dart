import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: webtoons,
        // snapshot == futureResult
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // 기본적인 ListView 사용 방식
            // return ListView(
            //   children: [
            //     for (var webtoon in snapshot.data!) Text(webtoon.title)
            //   ],
            // );
            // ListView.builder 사용 방식
            // 사용자가 볼 수 없는 아이템은 build 하지 않음
            // return ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: snapshot.data!.length,
            //   itemBuilder: (context, index) {
            //     // print(index);
            //     var webtoon = snapshot.data![index];
            //     return Text(webtoon.title);
            //   },
            // );
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                // print(index);
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
              // Widget을 리턴, 리스트 아이템 사이에 reder됨
              // 리스트 아이템들을 구분하기 위해 사용
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
