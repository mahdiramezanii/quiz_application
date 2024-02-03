import "package:flutter/material.dart";
import "package:quiz/quiz_page.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage("images/welcome.png"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.indigo[900],
              shape: LinearBorder(),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return QuizPage();
                })
              );
            },
            child: Text(
              "شروع بازی",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Text(
        "Quiz of King",
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.indigo[700],
    );
  }
}
