import 'package:app2022/modules/home/Test.dart';
import 'package:app2022/shared/components/components.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool scure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //LOGIN
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.blue),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //EMAIL
                  TextIn(
                    controller: emailController,
                    validat: "Enter your email",
                    type: TextInputType.emailAddress,
                    hint: "enter your email",
                    Pic: Icon(
                      Icons.email_outlined,
                    ),
                    label: "Email",
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //PASSWORD
                  TextIn(
                    controller: passwordController,
                    validat: "Enter your password",
                    type: TextInputType.visiblePassword,
                    hint: "enter your password",
                    Pic: Icon(
                      Icons.lock,
                    ),
                    Sic: IconButton(
                        onPressed: () {
                          setState(() {
                            scure = !scure;
                          });
                        },
                        icon: scure
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    label: "Password",
                    isScure: scure,
                  ),

                  //FORGET PASSWORD
                  Container(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {}),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //LOGIN BUTTON
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("good");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Test()));
                      }
                    },
                    child: Text("LogIn"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      fixedSize: MaterialStateProperty.all(Size(
                          MediaQuery.of(context).size.width / 3,
                          MediaQuery.of(context).size.height / 20)),
                      overlayColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent),
                    ),
                  ),

                  //REGISTER NOW
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text("Don't have an account? "),
                        ),
                        Container(
                          child: TextButton(
                              child: Text(
                                "Register Now",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
