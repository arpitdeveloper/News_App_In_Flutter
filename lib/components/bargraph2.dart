import 'package:flutter/material.dart';

void main() => runApp(const Demo());

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowHideDemo(),
    );
  }
}

class ShowHideDemo extends StatefulWidget {
  const ShowHideDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShowHideDemoState createState() {
    return _ShowHideDemoState();
  }
}

class _ShowHideDemoState extends State {
  String a = "";
  void pp() {
    setState(() {
      a = "D";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: const Text('Flutter Show/Hide Widget Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (a == "D")
            ? Container(
                margin: const EdgeInsets.only(top: 25, left: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      a = "M";
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                        'https://icons.veryicon.com/png/o/miscellaneous/student/false.png',
                        width: 16.0,
                        height: 16.0),
                  ),
                ),
              )
            : (a == 'M')
                ? Container(
                    margin: const EdgeInsets.only(top: 25, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          a = "D";
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/news.png',
                          height: 30.0,
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(top: 25, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          a = "M";
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/news.png',
                          height: 30.0,
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
