import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CatFacts extends StatefulWidget {
  const CatFacts({Key? key}) : super(key: key);

  @override
  _CatFactsState createState() => _CatFactsState();
}

class _CatFactsState extends State<CatFacts> {
  late Future _factFuture;
  String _fact = '';

  @override
  void initState() {
    super.initState();
    _factFuture = fetchFact();
  }

  Future fetchFact() async {
    var url = "https://catfact.ninja/fact";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return json['fact'];
    } else {
      throw Exception("Could not generate fact");
    }
  }

  void updateFact() {
    setState(() {
      _factFuture = fetchFact();
    });
  }

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
                children: [
                  const Text(
                    'Random fact about cats:',
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 25,
                    ),
                  ),
                  FutureBuilder(
                    future: _factFuture,
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Erro: ${snapshot.error}');
                      } else {
                        _fact = snapshot.data;

                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12, 50, 12, 50),
                          child: Text(
                            _fact,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  TextButton(
                    onPressed: updateFact,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFD466F),
                      fixedSize: const Size(245, 43),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Generate new fact',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 16,
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
