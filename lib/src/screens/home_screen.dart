// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (!snapshot.hasData) {
          return const login_screen();
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${snapshot.data!.displayName} 님 환영합니다."),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.grey.withOpacity(0.3))),
                    onPressed: FirebaseAuth.instance.signOut,
                    child: const Text('Google Logout'))
              ],
            ),
          );
        }
      },
    ));
  }
}
