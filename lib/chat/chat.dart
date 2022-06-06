import 'package:flutter/material.dart';
import 'package:kopi/Home.dart';

class chatpage extends StatefulWidget {
  chatpage({Key? key}) : super(key: key);

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 155, 83, 7),
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Chat',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    )),
                TextSpan(text: '\n'),
              ],
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 70,
              color: Color.fromARGB(255, 213, 212, 212),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Kirim pesan..',
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send_outlined),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
