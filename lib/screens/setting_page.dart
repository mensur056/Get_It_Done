import 'package:flutter/material.dart';
import 'package:get_it_done/models/color_Theme.dart';
import 'package:provider/provider.dart';
import 'package:get_it_done/models/color_Theme.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Your Theme Color'),
        ),
        body: SwitchCard());
  }
}

class SwitchCard extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    bool _value = Provider.of<ColorThemeData>(context).isGreen;
    Text greenText = Text(
      'Green',
      style: TextStyle(color: Colors.green),
    );
    Text redText = Text(
      'Red',
      style: TextStyle(color: Colors.red),
    );
    return Card(
      child: SwitchListTile(
        title: Text(
          'Change Your Theme Color',
          style: TextStyle(color: Colors.black),
        ),
        subtitle: _value ? greenText : redText,
        value: _value,
        onChanged: (bool value) {

          Provider.of<ColorThemeData>(context,listen: false).switchTheme(value);
        },
      ),
    );
  }
}
