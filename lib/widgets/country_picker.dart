import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  final Function(String) selectedCountry;

  const CountryPicker({Key? key, required this.selectedCountry}) : super(key: key);

  @override
  CountryPickerState createState() => CountryPickerState();
}

class CountryPickerState extends State<CountryPicker> {
  List<String> countries = ['Spanien', 'Burkino Faso'];
  String selectedCountry = 'Spanien';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      value: selectedCountry,
      elevation: 2,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          selectedCountry = value!;
          widget.selectedCountry.call(value);
        });
      },
      items: countries.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
