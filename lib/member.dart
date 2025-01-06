import 'package:bottom_navi_app/member_login.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  const Member({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member'),
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Text('Member Page'),
            const SizedBox(height: 60,),
            btnlogin(context),
          ],
        ),
      ),
    );
  }

  Widget btnlogin(BuildContext contex){
    return TextButton(
      onPressed: () => Navigator.push(
        contex, 
        MaterialPageRoute(builder: (contex) => const MemberLogin())),
      child: const Text('Member Login'));
  }
}