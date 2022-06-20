import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/widgets/bottom_menu//bottom_menu.dart';
import 'package:projetoflutter/pages/widgets/menu/menu_app.dart';
import 'package:projetoflutter/pages/widgets/my_app_bar.dart';
import 'package:projetoflutter/pages/widgets/page_view/page_view_app.dart';
import 'package:projetoflutter/pages/widgets/page_view/my_dots_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;
  int _currentIndex = 0;
  double _yPosition = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;

    if (_yPosition == 0) {
      _yPosition = screenHeigth * .24;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? screenHeigth * .75 : screenHeigth * .24;
              });
            },
          ),
          MenuApp(
            top: screenHeigth * 0.20,
            showMenu: _showMenu,
          ),
          BottomMenu(showMenu: _showMenu),
          MyDotsApp(
            currentIndex: _currentIndex,
            top: screenHeigth * 0.70,
            showMenu: _showMenu,
          ),
          PageViewApp(
            top: _yPosition,
            showMenu: _showMenu,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdade: (detais) {
              double positionBottomLimit = screenHeigth * .75;
              double positionTopLimit = screenHeigth * .24;
              double midlePosition =
                  (positionBottomLimit - positionTopLimit) / 2;

              setState(() {
                _yPosition += detais.delta.dy;

                _yPosition = _yPosition < positionTopLimit
                    ? positionTopLimit
                    : _yPosition;

                _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit
                    : _yPosition;

                if (_yPosition != positionBottomLimit && detais.delta.dy > 0) {
                  _yPosition = _yPosition > positionTopLimit + midlePosition
                      ? positionBottomLimit
                      : _yPosition;
                }

                if (_yPosition != positionTopLimit && detais.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottomLimit - midlePosition
                      ? positionTopLimit
                      : _yPosition;
                }

                if (_yPosition == positionBottomLimit) {
                  _showMenu = true;
                } else if (_yPosition == positionTopLimit) {
                  _showMenu = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
