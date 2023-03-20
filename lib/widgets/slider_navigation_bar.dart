import 'package:dm1/utils/style_variables/color_palette.dart';
import 'package:flutter/material.dart';

import '../utils/style_variables/padding_variables.dart';

class SliderNavigationBar extends StatefulWidget {
  final Function(int) index;

  const SliderNavigationBar({Key? key, required this.index}) : super(key: key);

  @override
  SliderNavigationBarState createState() => SliderNavigationBarState();
}

class SliderNavigationBarState extends State<SliderNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      padding: const EdgeInsets.only(top: PaddingVariables.basic),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navItem(Icons.home, 'Mein\nRatgeber', 0),
                _navItem(Icons.chat_bubble_outline, 'Reisehilfe', 1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int position) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = position;
          widget.index.call(index);
        });
      },
      child: SizedBox(
        width: 75,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: PaddingVariables.half),
              child: Text(
                label,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 75,
              height: 5,
              decoration: BoxDecoration(
                color: position == index
                    ? Palette.primarySwatch
                    : Palette.primarySwatch.shade800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
