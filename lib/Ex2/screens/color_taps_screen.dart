

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Ex2/models/color_counters.dart';
import 'package:state_management/Ex2/widgets/color_taps.dart';

class ColorTapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Column(
            children: [
              // Red card with tap count and increment callback
              ColorTap(
                type: CardType.red,
                tapCount: colorCounters.redTapCount,
                onTap: colorCounters.incrementRedTap,
              ),
              // Blue card with tap count and increment callback
              ColorTap(
                type: CardType.blue,
                tapCount: colorCounters.blueTapCount,
                onTap: colorCounters.incrementBlueTap,
              ),
            ],
          );
        },
      ),
    );
  }
}