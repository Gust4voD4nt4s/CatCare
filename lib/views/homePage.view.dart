import 'package:cat_care/views/catFacts.view.dart';
import 'package:cat_care/views/comingSoon.view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width; // largura da tela
    double buttonWidth = 120;
    double buttonHeight = 130;

    if (screenWidth < 390.0) {
      buttonWidth = 110;
      buttonHeight = 120;
    }

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
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: Text(
                        'What are you \nlooking for?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 20, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ComingSoon()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 190, 190, 190),
                                                  Color.fromARGB(
                                                      255, 154, 154, 154),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/veterinario.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Veterinary',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ComingSoon()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 190, 190, 190),
                                                  Color.fromARGB(
                                                      255, 154, 154, 154),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/saco.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Goodies',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ComingSoon()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 190, 190, 190),
                                                  Color.fromARGB(
                                                      255, 154, 154, 154),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/comida-de-gato.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Food',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 20, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ComingSoon()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 190, 190, 190),
                                                  Color.fromARGB(
                                                      255, 154, 154, 154),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/gato.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Adopt',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ComingSoon()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 190, 190, 190),
                                                  Color.fromARGB(
                                                      255, 154, 154, 154),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/animais-de-estimacao.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Care tips',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 5, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 12),
                                      child: ElevatedButton(
                                        onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CatFacts()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 10,
                                          backgroundColor: Colors.transparent,
                                        ),
                                        child: Container(
                                          width: buttonWidth,
                                          height: buttonHeight,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 255, 124, 148),
                                                  Color(0xFFFD466F),
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                              )),
                                          child: Image.asset(
                                            'assets/images/lupa.png',
                                            
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Random facts',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
