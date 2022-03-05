import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_youtube_clone/src/binding/init_binding.dart';
import 'package:flutter_youtube_clone/src/app.dart';
import 'package:flutter_youtube_clone/src/components/youtube_detail.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone Coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => App()),
        GetPage(name: "/detail/:videoId", page: () => YoutubeDetail()),
      ],
    );
  }
}
