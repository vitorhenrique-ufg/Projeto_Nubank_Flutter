import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.5, color: Colors.white54),
              top: BorderSide(width: 0.5, color: Colors.white54))),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple[800],
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            const Icon(Icons.chevron_right, size: 16,)
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
