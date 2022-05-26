import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';

class stackExample extends StatefulWidget {
  const stackExample({Key? key}) : super(key: key);

  @override
  State<stackExample> createState() => _stackExampleState();
}

class _stackExampleState extends State<stackExample> {
  int too = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack example"),
      ),
      body: Container(
        width: 400,
        height: 200,
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Ink.image(
                image: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1402894430173110274/5zrO8sS5_400x400.jpg"),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => {
                  setState(() {
                    too++;
                  })
                  },
                ),
              ),
              textPosition(left: 40, bottom: 0, text:too.toString()),
            
            ],
          ),
        ),
      ),
    );
  }
}

Widget textPosition({left, bottom, top, right, text: ""}) {
  return Positioned(
    left: left,
    bottom: bottom,
    top: top,
    right: right,
    child: Text(
      text,
      style: TextStyle(
          fontSize: 20, color: Colors.purple, fontWeight: FontWeight.bold),
    ),
  );
}
