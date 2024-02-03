import "package:flutter/material.dart";

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(
        children: [
          Image(
            image: AssetImage("images/1.png"),
          ),
          Text(
            "مشهورترین شعبده باز جهان کیست؟",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          ListTile(
            title: Text(
              "برد پیت",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "برد پیت",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "برد پیت",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "برد پیت",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white, size: 25),
    title: Text(
      "Quiz of King",
      style: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.indigo[700],
  );
}
