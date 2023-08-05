import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/input_filed.dart';
import 'data/questions.dart';
import 'models/task_model.dart';
import 'models/user_model.dart';

// class TaskPage extends StatelessWidget {
//   const TaskPage({super.key});
class TaskPage extends StatefulWidget {
  const TaskPage({required this.user, super.key});

  final User user;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late List<TaskModel> listQuestions;
  late User user;

  @override
  void initState() {
    super.initState();
    listQuestions = questions;
    user = widget.user;

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/image/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          user.userName,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFE86B02),
          ),
        ),
        actions: [
          Row(
            children: [
              Image.asset(
                'assets/image/star.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              Text('aa')
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  //SizedBox(height: 10),
                  for (int i = 0; i < 5; i++)
                    Image.asset('assets/image/orange 3.png'),
                ],
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Text(
              '0/10',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFFE86B02),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/image/previous 1.png'),
                Image.asset('assets/image/IMG.png'),
                Image.asset('assets/image/previous 2.png'),
              ],
            ),
            SizedBox(
              height: 27,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 6; i++) GradientLetter(letter: ''),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/idea 1.png',
                  width: 23,
                  height: 23,
                ),
                Text(
                  'Hint',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Nunito',
                    color: Color(0xFFE86B02),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 57,
            ),
            Container(
              width: 420,
              height: 245,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                ),
                children: [
                  for (int i = 0; i < 14; i++)
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('a');
                        }
                      },
                      child: GradientLetter(letter: 'a'),
                    )
                ],
              ),
            ),

            // Container(
            //   width: double.maxFinite,
            //   padding: EdgeInsets.only(bottom: 10),
            //   color: Colors.white,
            //   child: Center(
            //     child: Container(
            //       width: 150,
            //       decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Color(0xFFE86B02), Color((0xFFFA9541))]),
            //           borderRadius: BorderRadius.circular(10)),
            //       child: ElevatedButton(
            //         onPressed: () {},
            //         child: Text(
            //           'Reload',
            //           style: TextStyle(
            //               fontFamily: 'Nunito',
            //               fontSize: 24,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.transparent,
            //           elevation: 0,
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(25)),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}




