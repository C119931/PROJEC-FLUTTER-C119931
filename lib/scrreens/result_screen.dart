import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_c119931/main.dart';

class result extends StatefulWidget {
  final int score;
  const result(this.score, {Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff252c4a);
    Color secondColor = Color(0xff117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratualtion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your is score is : ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "${widget.score}",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.0),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: Text("Repead The Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
// children: [
//         
//         ),
//       ]