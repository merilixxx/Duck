import 'package:duck/Screens/AnalScreen.dart';
import 'package:duck/Screens/HomeScreen.dart';
import 'package:duck/Screens/ScanerScreen.dart';
import 'package:flutter/material.dart';
import 'package:duck/Screens/ListScreen.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color.fromARGB(255, 252, 216, 0),
                size: 28.0,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: const Color.fromARGB(255, 30, 30, 30),
            title: const Text(
              'Duck',
              style: TextStyle(
                color: Color.fromARGB(255, 252, 216, 0),
                fontFamily: 'Cuprum',
                fontSize: 34,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 252, 216, 0),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.list_alt_rounded,
                    color: Color.fromARGB(255, 252, 216, 0),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color.fromARGB(255, 252, 216, 0),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.analytics_outlined,
                    color: Color.fromARGB(255, 252, 216, 0),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => barrcodeScaner(),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 252, 216, 0),
            label: const Text(
              'Добавить чек',
              style: TextStyle(
                color: Color.fromARGB(255, 30, 30, 30),
                fontFamily: 'Cuprum',
                fontSize: 20.0,
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 30, 30, 30),
            ),
          ),
          body: const TabBarView(
            children: [
             listScreen(),
              homeScreen(),
              analytics(),
            ],
          ),
        ),
      ),
    );
  }
}
