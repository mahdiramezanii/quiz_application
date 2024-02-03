import 'package:flutter/material.dart';

class ResultScrean extends StatelessWidget {
  ResultScrean({required int score}){
        this.score=score;
  }
  int score=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 50),
          child: Image(
            image: AssetImage("images/cup.png"),
          ),
        ),
        Text(
          "${score.toString()}",
          style: TextStyle(color: Colors.black, fontSize: 50),
        )
      ]),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white, size: 25),
    title: Text(
      "نتیجه بازی",
      style: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.indigo[700],
  );
}
