import "package:flutter/material.dart";

import '../../global/widgets/space.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffb65607e),
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(color: const Color(0xffb65607e)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    MyTextField(
                        hintText: "Email", myController: emailController),
                    const VerticalSpace(height: 20),
                    MyTextField(
                        hintText: "Password", myController: passwordController)
                  ],
                ),
                customButtom(
                  text: 'Submit',
                  pressed: () {
                    setState(() {
                      print(emailController.text);
                      print(passwordController.text);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController myController;

  const MyTextField(
      {Key? key, required this.hintText, required this.myController})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.myController,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white54, width: 2.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.white54)),
    );
  }
}

class customButtom extends StatelessWidget {
  final String text;
  void Function()? pressed;

  customButtom({Key? key, required this.text, this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      width: 300,
      height: 40,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white70)),
        onPressed: pressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
