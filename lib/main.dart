// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  _Project1State createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1": "0- لا تشكُ للناسِ جرحاً أنتَ صاحبهُ",
      "line2": "لا يؤلمُ الجرحَ إلا منْ به ألمُ"
    },
    {
      "line1": "1- شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },

    {
      "line1": "2- فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "3- وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    // {
    //   "line1": "هل المواساه يوماً حرت وطناً",
    //   "line2": "أم التعازى بديل ان هو العلمُ"
    // },
    // {
    //   "line1": "من يندب الحظ يطفئ عين همته",
    //   "line2": "لاعين للحظ أن لم تبصر الهمم"
    // },
    // {
    //   "line1": "وَمِنْ سِوَى اللهِ نَأْوِي تَحْتَ سِدْرَتِهِ",
    //   "line2": "وَنَسْتَغِيثُ بِهِ عَوِّنَا وَنَعْتَصِمُ"
    // },
    // {
    //   "line1": "كُن فَيْلَسُوفًَا ترى أنَّ الجميعَ هُنَا",
    //   "line2": "يتقاتلون على عَدَمٍ وهُم عَدَمُ!!"
    // },
  ];

  int myIndex = 0;

  changeIndex(String dirction) {
    switch (dirction) {
      case "right":
        setState(() {
          if (myIndex == verse.length - 1) {
            myIndex = 0;
          } else {
            myIndex++;
          }
        });
        break;

      case "left":
        setState(() {
          if (myIndex == 0) {
            myIndex = verse.length - 1;
          } else {
            myIndex--;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[myIndex]["line1"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[myIndex]["line2"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("right");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
