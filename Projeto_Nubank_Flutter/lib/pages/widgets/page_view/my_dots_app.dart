import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final bool showMenu;

  Color _getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp(
      {Key? key,
      required this.currentIndex,
      required this.top,
      required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: showMenu ? 0 : 1,
          child: Row(
            children: <Widget>[
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: _getColor(0), shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 8,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: _getColor(1), shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 8,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(color: _getColor(2), shape: BoxShape.circle),
              )
            ],
          ),
        ));
  }
}
