import 'package:flutter/material.dart';

class CalanderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 78,
          height: 87,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 11,
                child: Container(
                  width: 78,
                  height: 76,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 8,
                child: Container(
                  width: 78,
                  height: 29,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF0B3160),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 43,
                child: Container(
                  width: 50,
                  height: 15,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 62,
                child: Container(
                  width: 50,
                  height: 15,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 14,
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.67,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 0,
                child: Container(
                  width: 5,
                  height: 16,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFF879AB1), Colors.white],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, -2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 0,
                child: Container(
                  width: 5,
                  height: 16,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFF879AB1), Colors.white],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, -2),
                        spreadRadius: 0,
                      )
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