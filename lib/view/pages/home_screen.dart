import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class FlasApp extends StatefulWidget {
  FlasApp({super.key});

  @override
  State<FlasApp> createState() => _FlasAppState();
}

class _FlasAppState extends State<FlasApp> {
  bool a = true;
  var controll = TorchController();
  bool c = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Torch App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            a
                ? Image.asset(
                    'assets/images/flashlight.png',
                    width: 300,
                    height: 300,
                  )
                : Image.asset(
                    'assets/images/flashlight.png',
                    width: 300,
                    height: 300,
                    filterQuality: FilterQuality.low,
                  ),
            // Icon(a ? Icons.power : Icons.power),
            IconButton(
                onPressed: () {
                  controll.toggle();

                  a = !a;
                  c = !c;
                  setState(() {});
                },
                icon: c
                    ? Image.asset(
                        'assets/images/power-removebg-preview.png',
                        width: 100,
                        height: 100,
                      )
                    : Image.asset(
                        'assets/images/power_red-removebg-preview.png'))
          ],
        ),
      ),
    );
  }
}
