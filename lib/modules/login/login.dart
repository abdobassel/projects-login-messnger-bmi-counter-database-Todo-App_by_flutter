import 'package:flutter/material.dart';
import 'package:udemy_mansour/shared/componontes/components.dart';

class Login extends StatelessWidget {
  var mailcontroller = TextEditingController();
  var pwcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'LogIn',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: mailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    label: Text('Email Adrress'),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    prefix: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: pwcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    label: Text('password'),
                    prefix: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        print(pwcontroller.text);
                        print(mailcontroller.text);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                DefaultButton(
                  function: () {
                    print('hello');
                  },
                  background: Colors.red,
                  width: 200,
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don\'t have account?"),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {}, child: Text("Rigester Now")),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
