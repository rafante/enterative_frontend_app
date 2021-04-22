import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class RadioButtonGroup extends StatefulWidget {
  final String description;
  RadioButtonGroup(this.description);

  @override
  _RadioButtonGroupState createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return RadioButton(
      description: widget.description,
      groupValue: null,
      onChanged: (newValue) {},
      value: null,
    );
  }
}
