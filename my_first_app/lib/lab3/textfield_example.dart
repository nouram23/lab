import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  int niilber = 0;
  TextEditingController fController = TextEditingController();
  TextEditingController sController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Example"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: fController,
              decoration: InputDecoration(
                  helperText: "helper",
                  labelText: "Too1",
                  border: OutlineInputBorder(),
                  hintText: "hint",
                  prefixIcon: Icon(Icons.near_me)),
            ),
            TextField(
              controller: sController,
              decoration: InputDecoration(
                  helperText: "helper",
                  labelText: "Too2",
                  border: OutlineInputBorder(),
                  hintText: "hint",
                  prefixIcon: Icon(Icons.near_me_disabled)),
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    niilber = int.parse(fController.text) +
                      int.parse(sController.text);
                  });
                },
                child: Text("Click")),
            Center(
              child: Text("Ur dun: " + niilber.toString()),
            )
          ],
        ),
      ),
    );
  }
}
