import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/widgets/bottom_menu/item_menu_bottom.dart';

class BottomMenu extends StatefulWidget {
  final bool showMenu;

  const BottomMenu({Key? key, required this.showMenu}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 80, end: 0),
        duration: Duration(milliseconds: 600),
        curve: Curves.bounceInOut,
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            bottom: !widget.showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.14,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: !widget.showMenu ? 1 : 0,
                child: Container(
                  height: 150,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ItemMenuBottom(icon: Icons.person_add, text: "Indicar amigos",),
                      ItemMenuBottom(icon: Icons.phone_android, text: "Recarga de celular",),
                      ItemMenuBottom(icon: Icons.chat, text: "Cobrar",),
                      ItemMenuBottom(icon: Icons.monetization_on, text: "Empréstimos",),
                      ItemMenuBottom(icon: Icons.move_to_inbox, text: "Depositar",),
                      ItemMenuBottom(icon: Icons.mobile_screen_share, text: "Transferir",),
                      ItemMenuBottom(icon: Icons.format_align_center, text: "Ajustar limites",),
                      ItemMenuBottom(icon: Icons.chrome_reader_mode, text: "Pagar",),
                      ItemMenuBottom(icon: Icons.lock_open, text: "Bloquear cartão",),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}