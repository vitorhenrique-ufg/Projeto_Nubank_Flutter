import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/widgets/cards/first_card.dart';
import 'package:projetoflutter/pages/widgets/cards/second_card.dart';
import 'package:projetoflutter/pages/widgets/cards/third_card.dart';

import '../cards/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdade;
  final bool showMenu;

  const PageViewApp({Key? key,
    required this.top,
    required this.onChanged,
    required this.onPanUpdade,
    required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 80, end: 0),
        duration: Duration(milliseconds: 600),
        curve: Curves.bounceInOut,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            top: top,
            height: MediaQuery
                .of(context)
                .size
                .height * .45,
            left: value,
            right: value * -1,
            //width: MediaQuery.of(context).size.width,
            child: SizedBox(
              child: GestureDetector(
                onPanUpdate: onPanUpdade,
                child: PageView(
                  onPageChanged: onChanged,
                  physics: showMenu
                      ? const NeverScrollableScrollPhysics()
                      : const BouncingScrollPhysics(),
                  children: const <Widget>[
                    CardApp(child: FirstCard(),),
                    CardApp(child: SecondCard()),
                    CardApp(child: ThirdCard()),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
