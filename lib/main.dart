import 'package:flutter/material.dart';
import 'package:singleton_usage/services/shared_preferences_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterAdam',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    setHelper();
  }

  setHelper() async {
    print("sharedPreferencesHelper1");
    SharedPreferencesHelper s1 = await SharedPreferencesHelper.create("1");
    print("sharedPreferencesHelper2");
    SharedPreferencesHelper s2 = await SharedPreferencesHelper.create("2");
    s2.secret = "Levent";
    s2.secret = "Akrep";
    print(s2.secret);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
