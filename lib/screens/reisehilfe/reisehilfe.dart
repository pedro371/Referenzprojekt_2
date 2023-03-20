import 'package:dm1/screens/reisehilfe/reisehilfe_details.dart';
import 'package:dm1/utils/style_variables/layout_variables.dart';
import 'package:flutter/material.dart';

import '../../utils/style_variables/padding_variables.dart';
import '../../widgets/country_picker.dart';

class Reisehilfe extends StatefulWidget {
  const Reisehilfe({Key? key}) : super(key: key);

  @override
  ReisehilfeState createState() => ReisehilfeState();
}

class ReisehilfeState extends State<Reisehilfe> {
  int selectedCountryIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: PaddingVariables.basic, right: PaddingVariables.basic),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: PaddingVariables.doubled,
                bottom: PaddingVariables.doubled),
            child: Text(
              'Reisehilfe',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: PaddingVariables.triple),
            child: Text(
              'Sie wollen in den Urlaub und wollen für das Wohl Ihrer Familie keine Risiken eingehen? Nutzen Sie unseren Reisehelfer, um zu erfahren, auf was Sie achten müssen.',
            ),
          ),
          _countryPicker(),
        ],
      ),
    );
  }

  Widget _countryPicker() {
    return Container(
      padding: const EdgeInsets.all(PaddingVariables.basic),
      decoration: LayoutVariables.basicElevatedContainer(Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wohin geht die Reise?',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          CountryPicker(
            selectedCountry: (country) {
              // Attention, just a quick implementation of the callback to get ready
              setState(() {
                if (country == 'Spanien') {
                  selectedCountryIndex = 1;
                } else {
                  selectedCountryIndex = 0;
                }
              });
            },
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReisehilfeDetails(
                      selectedCountry: selectedCountryIndex,
                    ),
                  ),
                );
              },
              child: const Text('Reiseempfehlungen'),
            ),
          ),
        ],
      ),
    );
  }
}
