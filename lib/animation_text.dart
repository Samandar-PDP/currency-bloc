import 'package:flutter/material.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({super.key, required this.value});
  final int value; // 450.0 -> 0 -> -> ->

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> {
  int _maxValue = 0;
  int _minValue = 0;

  @override
  void initState() {
    print('init');
    _maxValue = widget.value; // 450
    _anim();
    super.initState();
  }

  _anim() async {
    while(_minValue <= _maxValue) {
      await Future.delayed(const Duration(microseconds: 1));
      _minValue++;
      _maxValue / 2;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      _minValue.toString(),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 35
      ),
    );
  }
}
