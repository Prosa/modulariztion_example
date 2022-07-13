import 'package:flutter/material.dart';
import 'package:template/template.dart';
import 'package:template/theme/widget/main_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Template.templateTestOne.theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEMPLATE THEME ONE'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Text Button',
                ),
              ),
              const MainContainer(
                width: 100,
                height: 80,
                child: Text('Main Container'),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
