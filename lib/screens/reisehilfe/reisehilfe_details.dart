import 'package:dm1/utils/demo_data/demo_data.dart';
import 'package:dm1/utils/style_variables/color_palette.dart';
import 'package:dm1/utils/style_variables/margin_variables.dart';
import 'package:dm1/widgets/g_app_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/style_variables/layout_variables.dart';
import '../../utils/style_variables/padding_variables.dart';

class ReisehilfeDetails extends StatefulWidget {
  final int selectedCountry;

  const ReisehilfeDetails({Key? key, required this.selectedCountry})
      : super(key: key);

  @override
  ReisehilfeDetailsState createState() => ReisehilfeDetailsState();
}

class ReisehilfeDetailsState extends State<ReisehilfeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar.reisehilfe,
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.only(
        left: PaddingVariables.basic,
        right: PaddingVariables.basic,
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: PaddingVariables.doubled,
              bottom: PaddingVariables.doubled,
            ),
            child: Text(
              DemoData.reiseempfehlung[widget.selectedCountry]['name'],
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          _quickStatus(),
          ..._information(),
        ],
      ),
    );
  }

  Widget _quickStatus() {
    bool warning = DemoData.reiseempfehlung[widget.selectedCountry]['pflichtimpfung'] != null;

    return Container(
      padding: const EdgeInsets.all(PaddingVariables.basic),
      decoration: LayoutVariables.basicElevatedContainer(
        warning ? Palette.primarySwatch.shade300 : Colors.lightGreen,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: MarginVariables.basic),
                padding: const EdgeInsets.all(PaddingVariables.basic),
                decoration: BoxDecoration(
                  color: warning ? Palette.primarySwatch : Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  warning ? Icons.medication_sharp : Icons.check,
                  color: Colors.white,
                ),
              ),
              Text(
                warning ? DemoData.reiseempfehlung[widget.selectedCountry]['pflichtimpfung'] : 'keine Pflichtimpfungen',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
          Visibility(
            visible: warning,
            child: Padding(
              padding: const EdgeInsets.only(top: PaddingVariables.basic),
              child: Text(
                warning ? DemoData.reiseempfehlung[widget.selectedCountry]['pflichtimpfungDetails'] : '',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _information() {
    return DemoData.reiseempfehlung[widget.selectedCountry]['details']
        .map<Widget>(
            (detail) => _informationsZelle(detail['header'], detail['content']))
        .toList();
  }

  Widget _informationsZelle(String header, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingVariables.doubled),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(top: PaddingVariables.half),
            child: Text(content),
          )
        ],
      ),
    );
  }
}
