import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  String getGreeting() {
    final currentTime = DateTime.now();
    if (currentTime.hour < 12) {
      return 'Good Morning!';
    } else if (currentTime.hour < 17) {
      return 'Good Afternoon!';
    } else {
      return 'Good Evening!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: <Color>[Color(0xff000000), Color(0x004d4d4d)],
                stops: <double>[0, 1],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/backgrnd.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(52, 77, 46, 83.66),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                        width: double.infinity,
                        height: 78,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              width: 45,
                              height: 49,
                              child: Image.asset(
                                'assets/images/LOGO.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: double.infinity,
                              width: 212, //dynamic setting needed
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 6, 17),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      ),
                                      child: Container(
                                        width: 53,
                                        height: 55,
                                        child: Image.asset(
                                          'assets/images/shelf.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        1, 0, 12, 0), //line
                                    width: 230,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffd9d9d9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 223.4, 180),
                        child: Text(
                          getGreeting(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(25, 0, 10, 10),
                        width: 245,
                        height: 195,
                        child: Stack(
                          children: [
                            Positioned(
                              left: -13,
                              top: 0,
                              child: Align(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(22, 0, 0, 0),
                                  width: 215,
                                  height: 186.27,
                                  child: Image.asset(
                                    'assets/images/dimsums.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 258,
                                height: 192,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 8, 49),
                        child: const Text(
                          'Let’s add your first item',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                          width: 60,
                          height: 56.34,
                          child: Image.asset(
                            'assets/images/arrowhome.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
          ),
        ],
      ),
      
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your scanner button logic here
        },
        child: const Icon(Icons.qr_code_scanner),
        backgroundColor: Colors.black,
        elevation: 10.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
    );
  }
}
