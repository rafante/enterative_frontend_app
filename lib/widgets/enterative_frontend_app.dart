import 'package:flutter/material.dart';
import 'package:frontend/pages/affiliate_page.dart';

class EnterativeFrontendApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      initialRoute: AffiliatePage.routeName,
      routes: {
        AffiliatePage.routeName: (ctx) => AffiliatePage(),
      },
    );
  }
}
