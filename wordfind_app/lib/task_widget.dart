import 'package:flutter/material.dart';
import 'dart:math';
import 'models/char_model.dart';
import 'models/task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget(
      {super.key, required this.size, required this.listQuestions});
  final Size size;
  final List<TaskModel> listQuestions;
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionIndex = 0;
  int hintCount = 0;

  @override
  void initState() {
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
  }

  @override
  Widget build(BuildContext context) {
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: generateHint(),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => generatePuzzle(left: true),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      InkWell(
                        onTap: generatePuzzle(next: true),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(
                  maxWidth: size.width / 2 * 1.5,
                ),
                child: Image.network(
                  currentQuestion.pathImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              currentQuestion.question,
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFE86B02),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.center,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: currentQuestion.puzzles.map((puzzle) {
                      Color? color;
                      if (currentQuestion.isDone == true) {
                        color = Colors.green[300];
                      } else if (puzzle.hintShow == true) {
                        color = Colors.yellow[300];
                      } else if (currentQuestion.isFull == true) {
                        color = Colors.red;
                      } else {
                        color = Color(0xFFE86B02);
                      }
                      return InkWell(
                        onTap: () {
                          if (puzzle.hintShow ||
                              currentQuestion.isDone == true) {
                            return;
                            currentQuestion.isFull = false;
                            puzzle.clearValue();
                            setState(() {});
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: constraints.biggest.width / 7 - 6,
                          height: constraints.biggest.height / 7 - 6,
                          margin: EdgeInsets.all(3),
                          child: Text(
                            (puzzle.currentValue ?? '').toUpperCase(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }).toList());
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 40),
            alignment: Alignment.center,
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    childAspectRatio: 1,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 14),
                itemCount: 14,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  bool statusBtn = currentQuestion.puzzles.indexWhere(
                          (puzzle) => puzzle.currentIndex == index) >=
                      0;
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      Color color = statusBtn
                          ? const Color(0xFFFBF5F2)
                          : const Color(0xFFE86B02);
                      return Container();
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  generatePuzzle(
      {List<TaskModel>? Loop, bool next = false, bool left = false}) {
    if (Loop != null) {
      currentQuestionIndex = 0;
      listQuestions = [];
      listQuestions.addAll(Loop);
    } else {
      if (next && currentQuestionIndex < listQuestions.length - 1) {
        currentQuestionIndex++;
      } else if (left && currentQuestionIndex > 0) {
        currentQuestionIndex--;
      } else if (currentQuestionIndex >= listQuestions.length - 1) {
        return;
      }
      ;
    }
    setState(() {
      if (listQuestions[currentQuestionIndex].isDone = true) {
        return;
      }
    });
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    setState(() {
      () {};
    });

    final List<String> answer = [currentQuestion.answer];

    //final WSSettings wordSetting = WSSetting(width: 14, height: 1, orientations: List.from([WSOrientation.horizontal,]);
  }

  generateHint() async {}
}
