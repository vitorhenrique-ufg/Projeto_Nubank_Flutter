import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    super.initState();
    delay();
  }

  Future<void> delay() async {
    await Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body:
      Center(
        child: Image.network(
            'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
            height: 50,
            color: Colors.white
        ),
      ),
    );
  }
}
