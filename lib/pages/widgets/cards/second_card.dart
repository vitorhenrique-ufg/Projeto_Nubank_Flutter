import 'package:flutter/material.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  State<SecondCard> createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> with AutomaticKeepAliveClientMixin{
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Conta",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Mostrar saldo  ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState((){
                                    _showSaldo = !_showSaldo;
                                  });
                                },
                                child: _showSaldo ?
                                Icon(Icons.check_box, color: Colors.green) : Icon(Icons.highlight_remove_outlined, color: Colors.red),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Saldo disponível',
                                textAlign: TextAlign.start,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              _showSaldo ? Text.rich(TextSpan(
                                  text: "R\$ 2.500,00",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 28)))
                                  :
                                  Container(
                                    height: 32,
                                    width: 160,
                                    color: Colors.grey[300],
                                  )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(20)),
                    Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Compra mais recente em Armazem do seu Zé no valor de R\$ 57,00 sexta",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 18,
                    )
                  ],
                ),
                color: Colors.grey[300],
              )),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}