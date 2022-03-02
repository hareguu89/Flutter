import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic 9 widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          alignment: Alignment.centerLeft,
          child:
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center, // justify-content:
              //   mainAxisSize: MainAxisSize.max, // width:
              //   crossAxisAlignment: CrossAxisAlignment.baseline, // align-item:
              //   textBaseline: TextBaseline.ideographic,
              //   children: const <Widget>[
              //     Text(
              //       'Hey',
              //       style: TextStyle(
              //         color: Colors.yellow,
              //         fontSize: 26,
              //       ),
              //     ),
              //     Text(
              //       'Hey',
              //       style: TextStyle(
              //         color: Colors.red,
              //         fontSize: 56,
              //       ),
              //     ),
              //     Icon(
              //       Icons.ac_unit,
              //       size: 60,
              //       color: Colors.lightBlue,
              //     ),
              //   ],
              // ),
              Image.network(
                  'https://i.picsum.photos/id/534/200/200.jpg?hmac=fFEUULhOfD3o0WvBKAcTIKeSps59JC49BsTEBu5Z3eI')),
    );
  }
}
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center, // justify-content:
//         mainAxisSize: MainAxisSize.max, // width:
//         // crossAxisAlignment: CrossAxisAlignment.center, // align-item:
//         children: <Widget>[
//           SizedBox(
//             child: YellowBox(),
//             height: 200,
//             width: 150,
//           ), //FlexFit.tight -> 가능한 사이즈만큼 차지
//           SizedBox(
//             height: 50,
//             width: 50,
//           ),
//           Spacer(flex: 2),
//           TallerYellowBox(),
//           Spacer(flex: 1),
//           YellowBox(),
//         ],
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.centerLeft,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center, // justify-content:
//         mainAxisSize: MainAxisSize.max, // width:
//         crossAxisAlignment: CrossAxisAlignment.center, // align-item:
//         children: <Widget>[
//           Flexible(
//             child: YellowBox(),
//             fit: FlexFit.loose,
//             flex: 2,
//           ), //FlexFit.tight -> 가능한 사이즈만큼 차지
//           Flexible(child: TallerYellowBox(), flex: 1),
//           Expanded(child: YellowBox()),
//         ],
//       ),
//     );
//   }
// }

class YellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
        border: Border.all(),
      ),
    );
  }
}

class TallerYellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
        border: Border.all(),
      ),
    );
  }
}
