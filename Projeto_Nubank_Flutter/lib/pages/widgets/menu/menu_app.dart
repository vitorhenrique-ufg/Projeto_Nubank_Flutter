import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/widgets/menu/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: showMenu ? 1 : 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                    height: 120,
                    color: Colors.white,
                  ),
                  const Text.rich(TextSpan(
                    text: 'Banco',
                    children: [
                      TextSpan(
                          text: '260 - Nu Pagamentos S.A',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    style: TextStyle(fontSize: 12),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(TextSpan(
                    text: 'Agência',
                    children: [
                      TextSpan(
                          text: '001',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    style: TextStyle(fontSize: 12),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(TextSpan(
                    text: 'Conta',
                    children: [
                      TextSpan(
                          text: '00000000-0',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    style: TextStyle(fontSize: 12),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        const ItemMenu(
                          icon: Icons.info_outline,
                          text: "Me ajuda",
                        ),
                        const ItemMenu(
                          icon: Icons.person_outline,
                          text: "Perfil",
                        ),
                        const ItemMenu(
                          icon: Icons.settings,
                          text: "Configurar conta",
                        ),
                        const ItemMenu(
                          icon: Icons.credit_card,
                          text: "Configurar cartão",
                        ),
                        const ItemMenu(
                          icon: Icons.store_mall_directory,
                          text: "Pedir conta PJ",
                        ),
                        const ItemMenu(
                          icon: Icons.store_mall_directory,
                          text: "Configuração do APP",
                        ),
                        const SizedBox(
                          height: 20,
                          width: double.infinity,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 0.7, color: Colors.white54)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purple[800]),
                            onPressed: () {},
                            child: const Text(
                              'SAIR DO APP',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
