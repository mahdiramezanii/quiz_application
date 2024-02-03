import 'package:quiz/data.dart';

List<Qurstion> getQuestion() {
  Qurstion q_1 = Qurstion();
  q_1.question = "معروف ترین شعبده باز جهان کیست؟";
  q_1.imageQuestion = "images/1.png";
  q_1.options_question = ["برد پیت", "مهدی رمضانی", "احمئ ائیبی", "میا خلیفه"];
  q_1.correctIndex = 1;

  Qurstion q_2 = Qurstion();
  q_2.question = "ثویترین حیوان دنیا کیست؟";
  q_2.imageQuestion = "images/2.png";
  q_2.options_question = [" پیت", "مهدی احمدی", "احمئ رضایی", "الکسیس اگزاس"];
  q_2.correctIndex = 1;

  Qurstion q_3 = Qurstion();
  q_3.question = "معروف ترین شعبده باز جهان کیست؟";
  q_3.imageQuestion = "images/3.png";
  q_3.options_question = ["برد پیت", "مهدی رمضانی", "احمئ ائیبی", "میا خلیفه"];
  q_3.correctIndex = 1;

  return [q_1, q_2, q_3];
}
