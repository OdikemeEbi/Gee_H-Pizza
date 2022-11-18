import 'package:flutter/material.dart';

void main() {
  runApp(const Dating());
}

class Dating extends StatelessWidget {
  const Dating({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Positioned(
            bottom: 0,
            child: Container(
              color: const Color.fromARGB(255, 228, 219, 219),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/images/pic2.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: MediaQuery.of(context).size.height * 0.435,
            child: const Align(
                alignment: Alignment.bottomCenter,
                child: Image(image: AssetImage("assets/images/pic1.png"))))
      ]),
    );
  }
}
