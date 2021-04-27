import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatelessWidget {
  final String label;
  final TextStyle labelStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
    color: Color(0xff555555),
    fontSize: 15,
  );

  TextInput(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 3, top: 18),
          child: Row(
            children: [
              Text(label, style: labelStyle),
              SizedBox(width: 5),
              Text('*', style: labelStyle.copyWith(color: Colors.red))
            ],
          ),
        ),
        Container(
          height: 28,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
