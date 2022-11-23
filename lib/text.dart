import 'package:flutter/material.dart';

class TextDart extends StatefulWidget {
  const TextDart({super.key});

  @override
  State<TextDart> createState() => _TextDartState();
}

class _TextDartState extends State<TextDart> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.35,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 234, 234),
                      label: const Text(
                        'Search for favorite pizza',
                        style: TextStyle(
                          letterSpacing: 1.3,
                          fontSize: 15,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 250, 234, 234),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 250, 234, 234),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.none,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 234, 234),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu_sharp),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
              margin: const EdgeInsets.only(bottom: 15),
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Pizza',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
