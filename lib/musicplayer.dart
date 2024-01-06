import 'package:flutter/material.dart';
import 'package:music_playerapp/Util.dart';
import 'package:music_playerapp/dialogbox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constantcolor.primarycolor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: DialogBox(child: Icon(Icons.arrow_back))),
                  Text(
                    "Music Player",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: DialogBox(child: Icon(Icons.menu)))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 420,
                width: 350,
                child: DialogBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        child: Image.asset("lib/assets/cover_art.png"),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Puthu Rottula than...",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                ]),
                            Text(
                              "Ilayaraja",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: DialogBox(
                    child: LinearPercentIndicator(
                  backgroundColor: Colors.black,
                  lineHeight: 3.0,
                  progressColor: Colors.black,
                  leading: Icon(Icons.speaker),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("0.30"), Text("5.42")],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Expanded(
                    child:
                        DialogBox(child: Icon(Icons.skip_previous_outlined))),
                Expanded(flex: 2, child: DialogBox(child: Icon(Icons.pause))),
                Expanded(
                    child: DialogBox(child: Icon(Icons.skip_next_outlined)))
              ]),
            ]),
          ),
        ));
  }
}
