import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:quiz/constant.dart';
import 'package:quiz/data.dart';
import 'package:quiz/result_screan.dart';

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int selectedQuestion = 0;
  int ScorePalyer = 0;
  bool is_finalQuestion = false;

  List<Qurstion> get_question = getQuestion();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(
        children: [
          Image(
            image: AssetImage(get_question[selectedQuestion].imageQuestion!),
          ),
          Text(
            get_question[selectedQuestion].question!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          ...List.generate(get_question.length + 1, (index) {
            return ListTile(title: select_response(index));
          }),
          is_finalQuestion
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){

                        return ResultScrean(score: ScorePalyer,);
                      })
                    );
                  },
                  child: Text(
                    "مشاهده امتیاز",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget select_response(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (index == get_question[selectedQuestion].correctIndex) {
            print("correct");
            ScorePalyer++;
          } else {
            print("!!!!");
          }
          if (selectedQuestion + 1 < get_question.length) {
            selectedQuestion++;
          } else {
            is_finalQuestion = true;
          }
        });
      },
      child: ListTile(
        title: Text(
          get_question[selectedQuestion].options_question![index],
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 18),
        ),
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
