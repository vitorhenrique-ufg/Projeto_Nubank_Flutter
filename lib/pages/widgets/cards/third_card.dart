import 'package:flutter/material.dart';

class ThirdCard extends StatefulWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  State<ThirdCard> createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttomPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.wallet_giftcard_sharp, color: Colors.grey, size: 30,),
            Column(
              children: [
                Text("Nubank rewards", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),),
                SizedBox(height: 15,),
                Text(
                  "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16), textAlign: TextAlign.center,)
              ],
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.purple)),
              child: RaisedButton(
                child: Text("ATIVE O SEU REWARDS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                disabledColor: Colors.purple[800],
                textColor: _buttomPressed ? Colors.white : Colors.purple[800],
                highlightColor: Colors.purple[800],
                onHighlightChanged: (pressed){
                    setState((){
                      _buttomPressed = pressed;
                    });
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                color: Colors.transparent,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                onPressed: () {

                },
              ),
            )],
        )
    );
  }
}