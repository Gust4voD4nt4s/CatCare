import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(214, 241, 244, 248),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pawPathGetStarted.png',
              width: MediaQuery.of(context).size.width,
              height: 106,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  child: const BackButton(
                    color: Color(0xFFFD466F),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Coming soon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
                    child: Text(
                      'This page is under construction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/catGetStarted.png',
            ),
          ],
        ),
      ),
    );
  }
}
