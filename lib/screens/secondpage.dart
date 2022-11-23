import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

final _formKey = GlobalKey<FormState>();
final TextEditingController name = TextEditingController();
final TextEditingController description = TextEditingController();
final TextEditingController price = TextEditingController();

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
        ),
        body: SingleChildScrollView(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text('Name'),
                  hintText: ('Enter Product Name'),
                  contentPadding: EdgeInsets.all(20),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name cannot be empty";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: description,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text('Description'),
                  hintText: ('Describe The Product '),
                  contentPadding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 150,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Description cannot be empty";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: price,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text('price'),
                  hintText: ('Enter Product Price '),
                  contentPadding: EdgeInsets.all(20),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Price cannot be empty";
                  }
                  return null;
                },
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 162, 0),
                        minimumSize: const Size(double.infinity, 50),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Save',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ))))
          ]),
        ));
  }
}
