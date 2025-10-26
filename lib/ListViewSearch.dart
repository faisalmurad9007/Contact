import 'package:flutter/material.dart';

import 'package:list_view_search/theme.dart';

import 'contactcard.dart';
import 'contactlist.dart';
import 'HScreen.dart';
import 'Wscreen.dart';
import 'myhomepage.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.deepPurple,
        //scaffoldBackgroundColor: Colors.blueGrey.shade200,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red,width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange,width: 3),
          ),
          hintStyle: TextStyle(
            color: Colors.deepPurple,
          ),

        ),
        textTheme: TextTheme(
            displayMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )
        ),
      ),

      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            )
        ),
      ),
      title: 'List View Search',
      home: ThemeTest(),
      initialRoute: 'MyHomePage',
      routes: {

        'HomeScreen': (context)=>HomeScreen(),
        'WelcomeScreen': (context)=>WelcomeScreen(),
        'HomePage': (context)=>HomePage2(),
        'MyHomePage': (context)=>HomePage(),
        'ContactList': (context)=>ContactCard(name: 'Faisal', phoneNumber: '+8801912697055',),

      },
    );
  }
}