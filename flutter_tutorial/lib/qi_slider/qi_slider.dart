import 'package:flutter/material.dart';

class QiSliderful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QiSliderState();
  }
}

class _QiSliderState extends State<QiSliderful> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Slider(
          // min: 0.2,
          // max: 0.8,
          // divisions 需要和 label 一起使用来显示label要显示的内容
          divisions: 5, // 分成几个可拖动空间
          label: '描述信息',
          activeColor: Colors.blue,
          inactiveColor: Colors.yellow,
          value: sliderValue,
          onChangeStart: (obj) {
            print('开始变动前的值：$obj');
          },
          onChanged: (obj) {
            print(obj);
            setState(() {
              sliderValue = obj;
            });
          },
          onChangeEnd: (obj) {
            print('结束变动后的值：$obj');
          },
          semanticFormatterCallback: (newValue) {
            // 如何使用的？
            print('${newValue.round()} dollars');
            return '${newValue.round()} dollars';
          },
        ),
      ),
    );
  }
}

class QiSlider extends StatelessWidget {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Slider(
            value: sliderValue,
            onChanged: (obj) {
              print(obj);
              sliderValue = obj;
            }),
      ),
    );
  }
}
