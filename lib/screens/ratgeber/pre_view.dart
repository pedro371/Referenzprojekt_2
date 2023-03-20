import 'package:dm1/screens/ratgeber/ratgeber_details.dart';
import 'package:dm1/utils/style_variables/color_palette.dart';
import 'package:dm1/utils/style_variables/margin_variables.dart';
import 'package:flutter/material.dart';

import '../../utils/style_variables/padding_variables.dart';

class PreView extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  const PreView(
      {Key? key,
      required this.title,
      required this.image,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RatgeberDetails(title: title, content: '', image: image),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: PaddingVariables.basic),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    'assets/ratgeber/$image',
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: MarginVariables.basic),
                  padding: const EdgeInsets.fromLTRB(
                    PaddingVariables.ratDateHorizontally,
                    PaddingVariables.ratDateVertically,
                    PaddingVariables.ratDateHorizontally,
                    PaddingVariables.ratDateVertically,
                  ),
                  decoration: const BoxDecoration(
                    color: Palette.primarySwatch,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    '27.03.22',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: PaddingVariables.basic,
                    ),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headlineMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // Just hardcoded demodata
                  Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                    maxLines: title.length > 15 ? 4 : 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
