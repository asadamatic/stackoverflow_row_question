import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: false
          ? NumbersGridView()
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print('Just clicked on 7');
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    color: Colors.yellow,
                                    margin: const EdgeInsets.all(1.0),
                                    child: const AutoSizeText(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 300.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print('Just clicked on 7');
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    color: Colors.yellow,
                                    margin: const EdgeInsets.all(1.0),
                                    child: const AutoSizeText(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 300.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print('Just clicked on 7');
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    color: Colors.yellow,
                                    margin: const EdgeInsets.all(1.0),
                                    child: const AutoSizeText(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 300.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print('Just clicked on 7');
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    color: Colors.yellow,
                                    margin: const EdgeInsets.all(1.0),
                                    child: const AutoSizeText(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 300.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //Expanded(
                      //child:
                      GestureDetector(
                        onTap: () {
                          print('Just clicked on 8');
                        },
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            color: Colors.cyan,
                            margin: const EdgeInsets.all(1.0),
                            child: const AutoSizeText(
                              '8',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 300.0, color: Colors.black45),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class NumbersGridView extends StatelessWidget {
  const NumbersGridView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemCount: 30,
              itemBuilder: (buildContext, index) {
                return InkWell(
                  onTap: () {
                    print(index);
                  },
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.cyan,
                      margin: const EdgeInsets.all(1.0),
                      child: AutoSizeText(
                        index.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 300.0, color: Colors.black45),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Container(width: 20.0, child: VerticalDivider(color: Colors.red)),
        Flexible(
          child: SizedBox(
            width: 50.0,
            child: ListView.builder(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (buildContext, index) {
                  return Container(
                    height: 40.0,
                    width: 40.0,
                    alignment: Alignment.center,
                    color: Colors.cyan,
                    child: AutoSizeText(
                      index.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black45),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
