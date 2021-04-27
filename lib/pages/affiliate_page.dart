import 'package:flutter/material.dart';
import 'package:frontend/pages/widgets/radio_group.dart';
import 'package:frontend/pages/widgets/text_input.dart';
import 'package:frontend/utils/screen.dart';
import 'package:google_fonts/google_fonts.dart';
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
      1: beAPartnerWidget(),
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
          enterativeLogoWidget(),
          SizedBox(width: 70),
          affiliatedLogoWidget(),
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
            Responsive(children: [Div(child: razaoSocialWidget(), colL: 4, colM: 4, colS: 4)]),
            SizedBox(height: 10),
            Responsive(children: [
              Div(child: fantasiaWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            SizedBox(height: 10),
            Responsive(children: [
              Div(child: tipoLojaWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            SizedBox(height: 10),
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
            ]),
            Responsive(children: [
              Div(child: linkWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: ramoAtividadeWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: enderecoEmpresa(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: cpfWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: telefonesWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: fotoFachadaWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: captchaWidget(), colL: 4, colM: 4, colS: 4),
            ]),
            Responsive(children: [
              Div(child: btnSubmit(), colL: 4, colM: 4, colS: 4),
            ]),
          ],
        ),
      ),
    );
  }

  Widget enterativeLogoWidget() {
    return Image.asset(
      'assets/img/enterative_logo.png',
      height: _imgsHeight,
    );
  }

  Widget affiliatedLogoWidget() {
    return Image.asset(
      'assets/img/mentes_que_pensam_logo.jpg',
      height: _imgsHeight,
    );
  }

  Widget beAPartnerWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 100,
      child: Text(
        'Seja um Parceiro',
        style: GoogleFonts.aBeeZee(
          fontWeight: FontWeight.bold,
          color: Color(0xff555555),
          fontSize: 28,
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

  Widget enderecoEmpresa() {
    return Container(child: TextInput('Endereço da Empresa'));
  }

  Widget telefonesWidget() {
    return Container();
  }

  Widget fotoFachadaWidget() {
    return Container();
  }

  Widget captchaWidget() {
    return Container();
  }

  Widget btnSubmit() {
    return Container();
  }

  Widget tipoLojaWidget() {
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
