
import 'dart:math';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   int count=0;
  // Color brown=Colors.brown;
  // Color black=Colors.black;
  // Color temp=Colors.white;

  List<Color> colors=[Colors.black, Colors.teal, Colors.red, Colors.amberAccent, Colors.green, Colors.white];
  int appBar=0;
  int sccaffold=0;
  Random random = new Random();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[appBar],
        centerTitle: true,
        title: Text('$count'),
      ),
      backgroundColor: colors[sccaffold],
      body: GestureDetector(
          onTap: (){
            setState(() {
              count++;

              appBar=random.nextInt(6);
              sccaffold=random.nextInt(6);
            });
          },
          child: Image.network("https://images.template.net/wp-content/uploads/2015/04/Cartoon-Mickey-Mouse-Drawing-Template.jpg")),

    );
  }
}
