import 'package:dm1/widgets/g_app_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/style_variables/color_palette.dart';
import '../../utils/style_variables/margin_variables.dart';
import '../../utils/style_variables/padding_variables.dart';

class RatgeberDetails extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  const RatgeberDetails({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar.ratgeber(title),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                'assets/ratgeber/$image',
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: MarginVariables.doubled),
                padding: const EdgeInsets.fromLTRB(
                  PaddingVariables.basic,
                  PaddingVariables.half,
                  PaddingVariables.basic,
                  PaddingVariables.half,
                ),
                decoration: const BoxDecoration(
                  color: Palette.primarySwatch,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Text(
                  '27.03.22',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              PaddingVariables.basic,
              PaddingVariables.doubled,
              PaddingVariables.basic,
              PaddingVariables.half,
            ),
            child: Text(
              'Lorem ipsum?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(PaddingVariables.basic),
            child: Text('''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hac habitasse platea dictumst quisque sagittis purus. Risus at ultrices mi tempus imperdiet nulla malesuada pellentesque. Leo vel orci porta non pulvinar neque laoreet suspendisse. Mattis nunc sed blandit libero volutpat sed. Cursus eget nunc scelerisque viverra mauris in. Gravida in fermentum et sollicitudin. Elit eget gravida cum sociis. Tincidunt eget nullam non nisi est sit. Neque viverra justo nec ultrices. Iaculis nunc sed augue lacus viverra vitae. Mi quis hendrerit dolor magna eget. Tempor orci dapibus ultrices in iaculis. Gravida in fermentum et sollicitudin ac orci phasellus. Praesent tristique magna sit amet purus gravida quis blandit turpis. Tortor posuere ac ut consequat semper. Odio ut sem nulla pharetra diam sit. Ut pharetra sit amet aliquam id diam.

Tempor orci dapibus ultrices in iaculis nunc sed augue lacus. Felis donec et odio pellentesque. Ultricies lacus sed turpis tincidunt id aliquet risus. Posuere ac ut consequat semper. Diam vulputate ut pharetra sit amet aliquam id. Vitae auctor eu augue ut lectus arcu bibendum at varius. Blandit volutpat maecenas volutpat blandit aliquam. Sit amet est placerat in egestas erat. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Felis imperdiet proin fermentum leo vel orci. At urna condimentum mattis pellentesque id nibh tortor id aliquet. Eu turpis egestas pretium aenean. Pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus.

Amet aliquam id diam maecenas ultricies. Turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet. Egestas purus viverra accumsan in nisl. Vitae congue mauris rhoncus aenean. Ac feugiat sed lectus vestibulum mattis. Aliquam ut porttitor leo a diam. Arcu ac tortor dignissim convallis aenean et tortor. Morbi tincidunt ornare massa eget egestas purus viverra accumsan in. Diam maecenas ultricies mi eget. Convallis tellus id interdum velit.
          '''),
          ),
        ],
      ),
    );
  }
}
