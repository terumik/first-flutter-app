// 2. for inherit StatelessWidget
import 'package:flutter/material.dart';

import './product_manager.dart';

// flutter runs main() when it runs the app
void main() {
  // 5. run app
  runApp(MyApp()); // instantiate MyApp class
  // *alternatively you can write like this
  // void main() => runApp(MyApp());
}

// define class
// 1. ウィジェットはオブジェクトなので、クラスでどういうオブジェクトなのか先に定義しておかないといけない
// ウィジェットを使うには、Flutterがウィジェットとして使えるオブジェクトかどうかわかっていないといけない
// -> だから親クラス(*2)を使って定義しないといけない
class MyApp extends StatelessWidget {
  // this class is a widget
  // StatelessWidget (=DataLessWidget) and take external data (not internal data) then build()
  // we need StatefullWidget (=DatafullWidget

  // implements/extends??
  // implements...interface（インターフェイス（インスタンス化不可）の『実装』）
  // extends...parent class（他クラス（インスタンス化可能）の『引継ぎ』）

  Widget build(BuildContext context) {
    // 3. methods
    // flutter will run build(context) to create a widget
    // build() has to return another Widget (like "build(): Widget" in angular)
    // 4. MaterialApp(named args(name: value)) ... wrap entire app. core root widget needed for every flutter app
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        accentColor: Colors.indigoAccent,
      ),
      // widget drawn on the screen. create a new page
      home: Scaffold(
          appBar: AppBar(
            // create a nav bar
            title: Text('Easy List'), // title in the app bar
          ),
          body: ProductManager(startingProduct: 'Food Tester')),
    );
  }
}
