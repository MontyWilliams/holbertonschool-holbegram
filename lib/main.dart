import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:holbegram/widgets/text_field.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'com.monty.holbegram',
    options: FirebaseOptions(
      apiKey: 'AIzaSyAPvrjviXgA7I86-YQtNiBDkshdEsgb8vM',
      projectId: 'holbegram-a7aa4',
      storageBucket: 'holbegram-a7aa4.appspot.com',
      messagingSenderId: '722036419309',
      appId: '1:722036419309:android:79287b183af389779e3ae4',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? Key}) : super(key: Key);
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Wubaduba dub dub!',
            home: Scaffold(
                body: Center(
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            TextFieldInput(
                                controller: TextEditingController(),
                                hintText: "email",
                                suffixIcon: Icon(Icons.search),
                                keyboardType: TextInputType.text,
                        ),
                        TextFieldInput(
                                controller: TextEditingController(),
                                hintText: "password",
                                isPassword: true,
                                suffixIcon: Icon(Icons.password),
                                keyboardType: TextInputType.text,
                        ),
                    ],
                ),
             ),
          )

        );
    }
}