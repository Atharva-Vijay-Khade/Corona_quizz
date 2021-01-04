import 'package:flutter/material.dart';
import 'package:quzz_app/Questions/question.dart';
import 'package:quzz_app/backend.dart';

class Quizz extends StatefulWidget {
  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int index = 0;

  List<Question> questions = [
    Question(
        text: "One infected person infects about 2.5 other people.",
        answer: "true"),
    Question(
        text:
            "Patients with COVID-19 can take anti-inflammatory medicine like ibuprofen, aspirin or naproxen.",
        answer: "true"),
    Question(
        text:
            "Once infected with the coronavirus, it can take 2 to 14 days to show symptoms.",
        answer: "true"),
    Question(
        text:
            "Hand sanitizer doesn’t kill coronavirus because it’s antibacterial, not antiviral.",
        answer: "false"),
    Question(
        text: "Healthy people should practice social distancing.",
        answer: "true"),
    Question(
        text:
            "During a shelter-in-place order, my kids can be with other kids in small groups",
        answer: "false"),
    Question(
        text:
            "Anyone with COVID-19 symptoms, regardless of their overall health, should seek testing.",
        answer: "false"),
    Question(
        text: "A loss of smell or taste is a symptom of COVID-19.",
        answer: "true"),
    Question(
        text:
            "If you can hold your breath for 10 seconds, you don’t have COVID-19.",
        answer: "false"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CoViD QuIzZ", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900],
      ),
      body: Builder(                                       ////vvvvv imp we pass context to backend this relates two contexts used!!!!!
        builder: (BuildContext context) => Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/covid_img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      questions[index].text,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      showResult("false",index,context,questions);
                    },
                    icon: Icon(Icons.cancel_outlined),
                    color: Colors.red,
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      showResult("true",index,context,questions);
                    },
                    icon: Icon(Icons.check_circle_outline),
                    color: Colors.green,
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        index = (index + 1) % questions.length;
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.white,
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
