import 'package:flutter/material.dart';
import 'package:frontend/pages/widgets/affiliated_logo.dart';
import 'package:frontend/pages/widgets/be_a_partner.dart';
import 'package:frontend/pages/widgets/btn_submit.dart';
import 'package:frontend/pages/widgets/captcha.dart';
import 'package:frontend/pages/widgets/company_address.dart';
import 'package:frontend/pages/widgets/enterative_logo.dart';
import 'package:frontend/pages/widgets/facade_pitcture.dart';
import 'package:frontend/pages/widgets/phones.dart';
import 'package:frontend/pages/widgets/shop_type.dart';
import 'package:frontend/widgets/text_input.dart';
import 'package:frontend/utils/screen.dart';
import 'package:responsive_ui/responsive_ui.dart';

class AffiliatePage extends StatelessWidget {
  static String routeName = '/affiliate';
  final double _imgsHeight = 110;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Tools.screenWidth(context, 20),
          vertical: Tools.screenHeight(context, 5),
        ),
        child: ListView.separated(
          itemBuilder: (ctx, i) => makeWidgetByOrder(i) ?? Container(),
          separatorBuilder: (ctx, i) => Divider(height: 2),
          itemCount: 4,
        ),
      ),
    );
  }

  Widget? makeWidgetByOrder(int order) {
    Map<int, Widget> widgetsByOrder = {
      0: logosWidget(),
      1: BeAPartner(),
      2: formWidget(),
    };
    return widgetsByOrder[order];
  }

  Widget logosWidget() {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EnterativeLogoWidget(_imgsHeight),
          SizedBox(width: 70),
          AffiliatedLogo(_imgsHeight),
        ],
      ),
    );
  }

  Widget formWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Responsive(children: [
              Div(child: razaoSocialWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: fantasiaWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            SizedBox(height: 20),
            Responsive(children: [
              Div(child: ShopType(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: cnpjWidget(), colL: 4, colM: 4, colS: 4),
              Div(child: inscricaoEstadualWidget(), colL: 4, colM: 4, colS: 4, offsetL: 2, offsetM: 2),
            ]),
            Responsive(children: [
              Div(child: inscricaoMunicipalWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: nomeResponsavel(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: cpfWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: emailResponsavel(), colL: 4, colM: 4, colS: 4),
              Div(child: linkWidget(), colL: 4, colM: 4, colS: 4, offsetL: 2, offsetM: 2),
            ]),
            Responsive(children: [
              Div(child: ramoAtividadeWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: CompanyAddress(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: cpfWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: Phones(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: FacadePicture(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: Captcha(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: BtnSubmit(), colL: 4, colM: 4, colS: 4),
            ]),
          ],
        ),
      ),
    );
  }

  Widget razaoSocialWidget() {
    return Container(child: TextInput('Razão Social'));
  }

  Widget fantasiaWidget() {
    return Container(child: TextInput('Fantasia'));
  }

  Widget cnpjWidget() {
    return Container(child: TextInput('Cnpj'));
  }

  Widget inscricaoEstadualWidget() {
    return Container(child: TextInput('Inscrição Estadual'));
  }

  Widget inscricaoMunicipalWidget() {
    return Container(child: TextInput('Inscrição Municipal'));
  }

  Widget nomeResponsavel() {
    return Container(child: TextInput('Nome Completo do Responsável'));
  }

  Widget cpfWidget() {
    return Container(child: TextInput('CPF'));
  }

  Widget emailResponsavel() {
    return Container(child: TextInput('E-mail do responsável'));
  }

  Widget linkWidget() {
    return Container(child: TextInput('Link'));
  }

  Widget ramoAtividadeWidget() {
    return Container(child: TextInput('Ramo de Atividade'));
  }
}
