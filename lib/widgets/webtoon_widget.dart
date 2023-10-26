import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector : 탭, 마우스이동, 드래그, 줌 등 감지 가능
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          // MaterialPageRoute : 새로운 화면 호출
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            // 어플의 경우 아래에서 위로 나타나며 X표시로 새로운 화면을 닫으려면 true
            // 오른쪽에서 왼쪽으로 나타나며 뒤로가기로 새로운 화면을 닫으려면 삭제 또는 false(defalut)
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          // 사용자가 클릭한 ID와 새로운 화면의 ID를 일치시켜 새로운 지점으로 떠가는 것처럼 함.
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
