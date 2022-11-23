import 'package:datingapp/Provider/provider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final callProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Add New Product",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Sora",
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        prefixIcon: Icon(FeatherIcons.box),
                        hintText: "Enter product name",
                        labelText: "Product Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is required";
                      }
                      return null;
                    },
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: price,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        prefixIcon: Icon(FeatherIcons.dollarSign),
                        hintText: "Enter product price",
                        labelText: "Product Price"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Price is required";
                      }
                      return null;
                    },
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    maxLines: 3,
                    controller: description,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        prefixIcon: Icon(FeatherIcons.edit2),
                        hintText: "Enter product description",
                        labelText: "Product Description"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Description is required";
                      }
                      return null;
                    },
                  )),
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
                      if (_formkey.currentState!.validate()) {
                        callProvider.addProduct(
                            name.text, description.text, price.text);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Product has been added'),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    },
                    child: const Text(
                      'Add Product',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sora',
                          fontSize: 16),
                    )),
              ),
            ],
          )),
    );
  }
}
