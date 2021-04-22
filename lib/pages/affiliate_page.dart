import 'package:flutter/material.dart';
import 'package:frontend/mixins/page_mixin.dart';
import 'package:responsive_ui/responsive_ui.dart';

class AffiliatePage extends StatelessWidget with EnterativePage {
  static String routeName = '/affiliate';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(children: [
        Div(
          child: titleWidget(),
          colL: 7,
          colM: 7,
          colS: 12,
          offsetL: 5,
          offsetM: 3,
        ),
        Responsive(children: [
          Div(
            child: titleWidget(),
            colL: 6,
            colS: 12,
          ),
          Div(
            child: titleWidget(),
            colL: 6,
            colS: 12,
          ),
        ])
      ]),
    );
  }

  Widget titleWidget() {
    return Text(
        'Bem vindo à Enterative! Agora você poderá fazer parte da melhor rede digital');
  }
}
