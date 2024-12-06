import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          PaymentOptions(),
        ]),
      ),
    );
  }
}

class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 926,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 428,
                  height: 926,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF0961F5), Color(0xFFFCCB40)],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 69,
                child: Container(
                  padding: const EdgeInsets.only(right: 1),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 11.79),
                      Text(
                        'Payment Option',
                        style: TextStyle(
                          color: Color(0xFF202244),
                          fontSize: 21,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 129,
                child: Container(
                  width: 360,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 266,
                        top: 21,
                        child: Text(
                          'Connected',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF167F71),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 209,
                child: Container(
                  width: 360,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 266,
                        top: 21,
                        child: Text(
                          'Connected',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF167F71),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 289,
                child: Container(
                  width: 360,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 266,
                        top: 21,
                        child: Text(
                          'Connected',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF167F71),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 369,
                child: Container(
                  width: 360,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14000000),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 21,
                        child: Text(
                          '**** ****  **76  3054',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF202244),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 266,
                        top: 21,
                        child: Text(
                          'Connected',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF167F71),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 824,
                child: Container(
                  width: 350,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 350,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Color(0xFF0961F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x4C000000),
                                blurRadius: 8,
                                offset: Offset(1, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 293,
                        top: 6,
                        child: Container(
                          width: 48,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 114,
                        top: 17,
                        child: Text(
                          'Add New Card',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 428,
                  height: 44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 389.33,
                        top: 17.33,
                        child: Container(
                          width: 24.33,
                          height: 11.33,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.35,
                                  child: Container(
                                    width: 22,
                                    height: 11.33,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1),
                                        borderRadius: BorderRadius.circular(2.67),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 2,
                                child: Container(
                                  width: 18,
                                  height: 7.33,
                                  decoration: ShapeDecoration(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.33),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 360.66,
                        top: 17.33,
                        child: Container(
                          width: 17.50,
                          height: 11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/18x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 335.55,
                        top: 17.67,
                        child: Container(
                          width: 19.40,
                          height: 10.67,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/19x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 12,
                        child: Container(
                          width: 54,
                          height: 22,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 54,
                                child: Text(
                                  '9:41',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 892,
                child: Container(
                  width: 428,
                  height: 34,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 147,
                    right: 147,
                    bottom: 19,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 134,
                        height: 5,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE2E6EA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}