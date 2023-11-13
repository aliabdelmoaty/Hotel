import 'package:flutter/material.dart';

class SliderPrice extends StatefulWidget {
  const SliderPrice({
    super.key,
  });

  static int value = 20;

  @override
  State<SliderPrice> createState() => _SliderPriceState();
}

class _SliderPriceState extends State<SliderPrice> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      max: 550,
      min: 20,
      divisions: 120,
      thumbColor: Colors.white,
      activeColor: Colors.teal.shade400,
      value: SliderPrice.value.toDouble(),
      onChanged: (value) {
        setState(() {
          SliderPrice.value = value.toInt();
        });
      },
    );
  }

  @override
  void dispose() {
    SliderPrice.value = 20;
    super.dispose();
  }
}
