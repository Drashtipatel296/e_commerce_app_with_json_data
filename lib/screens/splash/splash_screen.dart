import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: 500,
              width: 450,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/imgs/splash.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Unveiling a World of ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Beauty &\nCosmetic',
                  style: TextStyle(
                      color: Color(0xffB49052),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '  Products!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectere adipiscing elit, sed do eiusmod tempor incididunt',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff445A4B),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                "Let's Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    color: Color(0xffB49052),
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
