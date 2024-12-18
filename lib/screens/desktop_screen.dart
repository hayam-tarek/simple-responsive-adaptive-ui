import 'package:flutter/material.dart';
import 'package:test_responsive_adaptive/adaptive/adaptive_indicator.dart';
import 'package:test_responsive_adaptive/helper/constant.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              height: double.infinity,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login with you account",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Email', border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                height: 40,
                                color: Colors.blue,
                                onPressed: () {},
                                child: const Text('Login'),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: MaterialButton(
                                height: 40,
                                color: Colors.green,
                                onPressed: () {},
                                child: const Text('Register'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: AdaptiveIndicator(
                      os: getOS(),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
