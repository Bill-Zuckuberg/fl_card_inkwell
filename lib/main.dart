import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Card(
                color: Colors.red,
                elevation: 10,
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: const <Widget>[Expanded(child: Text("Card 1"))],
                  ),
                ),
              ),
              Card(
                color: Colors.green,
                child: SizedBox(
                  height: 100,
                  child: InkWell(
                    splashColor: Colors.deepOrange,
                    onTap: () {},
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                            child: Text("Card 2 ( with Inkwell effect on tap)"))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.elliptical(40, 80))),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                          child: Text("Card 3 (with custon border radius)"))
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                              child: Image.asset("assets/meo.jpg",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Card 4 (complex example)",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(onPressed: () {}, child: const Text("SHARE")),
                  TextButton(onPressed: () {}, child: const Text("EXPLORE"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
