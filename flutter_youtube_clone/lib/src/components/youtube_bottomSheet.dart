import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  const YoutubeBottomSheet({Key? key}) : super(key: key);

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '만들기',
          style: TextStyle(fontSize: 16),
        ),
        IconButton(onPressed: Get.back, icon: const Icon(Icons.close))
      ],
    );
  }

  Widget _itemButton(
      {String? icon,
      double? iconSize,
      String? label,
      required Function onTap}) {
    return InkWell(
      onTap: onTap(),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: Container(
                width: iconSize,
                height: iconSize,
                child: SvgPicture.asset('assets/svg/icons/$icon.svg'),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(label!),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(children: [
          _header(),
          const SizedBox(
            height: 10,
          ),
          _itemButton(
            icon: "upload",
            iconSize: 17,
            label: '동영상 업로드',
            onTap: () {
              print('동영상 업로드 기능');
            },
          ),
          const SizedBox(height: 10),
          _itemButton(
            icon: "broadcast",
            iconSize: 17,
            label: '실시간 스트리밍',
            onTap: () {
              print('실시간 스트리밍 기능');
            },
          ),
        ]),
      ),
    );
  }
}
