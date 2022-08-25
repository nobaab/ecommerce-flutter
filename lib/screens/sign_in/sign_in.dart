import 'package:flutter/material.dart';

import 'components/_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: SingleChildScrollView(child: SignInBody())));
  }
}
