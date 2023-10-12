import 'package:duck/Logic/LoginLogic.dart';
import 'package:duck/Logic/SignUpLogic.dart';
import 'package:duck/Screens/SignUp.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 80),
              child: Image(
                image: AssetImage('assets/Hello.gif'),
                height: 200.0,
                width: 200.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                controller: loginController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 252, 216, 0),
                  fontSize: 25,
                  fontFamily: 'Cuprum',
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Login',
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Cuprum',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(50, 252, 216, 0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 252, 216, 0),
                    ),
                  ),
                ),
                cursorColor: const Color.fromARGB(255, 252, 216, 0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                controller: passwordController,
                style: const TextStyle(
                    color: Color.fromARGB(255, 252, 216, 0),
                    fontSize: 25,
                    fontFamily: 'Cuprum'),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      color: Colors.white54, fontFamily: 'Cuprum'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(50, 252, 216, 0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 252, 216, 0),
                    ),
                  ),
                ),
                cursorColor: const Color.fromARGB(255, 252, 216, 0),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(20.0)),
            SizedBox(
              width: 200.0,
              height: 64.0,
              child: ElevatedButton(
                onPressed: () => Login(
                    context, loginController.text, passwordController.text),
                child: Text(
                  'Войти',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontFamily: 'Cuprum',
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 252, 216, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () => SignUp(context),
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 252, 216, 0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Регистрация',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 252, 216, 0),
                      fontFamily: 'Cuprum'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotLogin extends StatelessWidget {
  const NotLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      title: const Center(
        child: Text(
          'Неверный логин или пароль',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Cuprum',
            fontSize: 24.0,
          ),
        ),
      ),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'Проверьте введенные данные и попробуйте еще раз ... Кря!',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Cuprum',
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 252, 216, 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          child: const Text(
            'Забыл пароль',
            style: TextStyle(
              color: Colors.white70,
              fontFamily: 'Cuprum',
              fontSize: 20,
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 252, 216, 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Кря!',
            style: TextStyle(
              color: Color.fromARGB(255, 252, 216, 0),
              fontFamily: 'Cuprum',
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
