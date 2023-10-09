import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
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
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 13),
                    fontSize: 25,
                    fontFamily: 'Cuprum'),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'Login',
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Cuprum',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(50, 255, 255, 13),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 13),
                    ),
                  ),
                ),
                cursorColor: const Color.fromARGB(255, 255, 255, 13),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 13),
                    fontSize: 25,
                    fontFamily: 'Cuprum'),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      color: Colors.white54, fontFamily: 'Cuprum'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(50, 255, 255, 13),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 13),
                    ),
                  ),
                ),
                cursorColor: const Color.fromARGB(255, 255, 255, 13),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
            ),
            SizedBox(
              width: 200.0,
              height: 64.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Войти',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontFamily: 'Cuprum',
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            ),
            TextButton(
              onPressed: () {
                print('hello');
              },
              child: const Text(
                'Регистрация',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 255, 255, 13),
                    fontFamily: 'Cuprum'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
