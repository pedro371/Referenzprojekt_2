import 'package:dm1/screens/ratgeber/pre_view.dart';
import 'package:flutter/material.dart';

import '../../utils/style_variables/padding_variables.dart';

class MeinRatgeber extends StatelessWidget {
  const MeinRatgeber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: PaddingVariables.basic, right: PaddingVariables.basic),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: PaddingVariables.doubled, bottom: PaddingVariables.basic),
            child: Text(
              'Mein Ratgeber',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          // Just hardcoded demodata
          const PreView(title: 'Familie', content: 'Lurum ipsum', image: 'reise.jpeg'),
          const PreView(title: 'Gemeinsam gesund', content: 'Lurum ipsum', image: 'kindergarten.jpg'),
          const PreView(title: 'Die ersten Tage', content: 'Lurum ipsum', image: 'mutter.jpg'),
          const PreView(title: 'Für die Zukunft alles geregelt', content: 'Lurum ipsum', image: 'pflege.jpeg'),
        ],
      ),
    );
  }
}
