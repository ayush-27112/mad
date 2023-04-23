import 'package:flutter/material.dart';
class Expt2 extends StatefulWidget {
const Expt2({super.key});
@override
State<Expt2> createState() => _Expt2State();
}
class _Expt2State extends State<Expt2> {
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
TextEditingController addressController = TextEditingController();
Validator() {}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Flutter Experiment 2"),
actions: const [
Icon(Icons.search),
SizedBox(
width: 10,
),
Icon(Icons.more_vert),
],
),
body: Form(
key: _formKey,
child: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Padding(
padding: const EdgeInsets.all(20.0),
child: TextFormField(
validator: (value) {
if (value!.isEmpty) {
return 'Please enter your name';
}
return null;
},
controller: nameController,
decoration: const InputDecoration(
hintText: "Enter your name",
labelText: "Name",
border: OutlineInputBorder(),
),
),
),
Padding(
padding: const EdgeInsets.all(20.0),
child: TextFormField(
validator: (value) {
if (value!.isEmpty) {
return 'Please enter your email';
}
return null;
},
controller: emailController,
decoration: const InputDecoration(
hintText: "Enter your email",
labelText: "Email",
border: OutlineInputBorder(),
),
),
),
Padding(
padding: const EdgeInsets.all(20.0),
child: TextFormField(
validator: (value) {
if (value!.isEmpty) {
return 'Please enter your phone number';
}
return null;
},
controller: phoneController,
decoration: const InputDecoration(
hintText: "Enter your phone number",
labelText: "Phone",
border: OutlineInputBorder(),
),
),
),
Padding(
padding: const EdgeInsets.all(20.0),
child: TextFormField(
validator: (value) {
if (value!.isEmpty) {
return 'Please enter your address';
}
return null;
},
controller: addressController,
decoration: const InputDecoration(
hintText: "Enter your address",
labelText: "Address",
border: OutlineInputBorder(),
),
),
),
const SizedBox(
height: 50,
),
SizedBox(
height: 50,
width: 350,
child: TextButton(
style: TextButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.blue,
),onPressed: () { if (_formKey.currentState!.validate()) { print("Name: ${nameController.text}"); print("Email: ${emailController.text}"); print("Phone: ${phoneController.text}"); print("Address: ${addressController.text}"); showDialog( context: context, builder: (context) { return AlertDialog( title: const Text("Success"), content: const Text("Form submitted successfully"),actions: [ TextButton( onPressed: () { Navigator.pop(context); },child: const Text("OK"), ) ], ); }, ); } else { print("Invalid"); } },child: const Text("Submit")), ) ], ), ), ), ); } }