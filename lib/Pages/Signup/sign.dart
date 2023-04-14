import 'package:flutter/material.dart';
import 'package:ticaret_online/Pages/Login/login.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 100,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  labelText: "İsim",
                ),
              ),
            ),
            const SizedBox(height: 3),
            const SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  labelText: "Kullanıcı Adı",
                ),
              ),
            ),
            const SizedBox(height: 3),
            const SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  labelText: "Şifre",
                ),
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: const Text(
                "Kayıt Ol",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}