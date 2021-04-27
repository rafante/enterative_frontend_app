import 'package:flutter/material.dart';
import 'package:frontend/widgets/radio_group.dart';

class ShopType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      child: RadioGroup(
        label: 'Tipo de Loja',
        possibleLabels: ['Física', 'Virtual', 'Ambas'],
        onIndexSelected: (i) {
          print('Marcou o $i');
        },
      ),
    );
  }
}
