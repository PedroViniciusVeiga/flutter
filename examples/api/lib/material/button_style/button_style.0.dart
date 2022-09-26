// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Flutter code sample for ElevatedButton

import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
<<<<<<< HEAD
  const ButtonApp({Key? key}) : super(key: key);
=======
  const ButtonApp({super.key});
>>>>>>> e3c29ec00c9c825c891d75054c63fcc46454dca1

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: 'Button Types',
      home: const Scaffold(
        body: ButtonTypesExample(),
      ),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
<<<<<<< HEAD
  const ButtonTypesExample({Key? key}) : super(key: key);
=======
  const ButtonTypesExample({super.key});
>>>>>>> e3c29ec00c9c825c891d75054c63fcc46454dca1

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: const <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
<<<<<<< HEAD
  const ButtonTypesGroup({ Key? key, required this.enabled }) : super(key: key);
=======
  const ButtonTypesGroup({ super.key, required this.enabled });
>>>>>>> e3c29ec00c9c825c891d75054c63fcc46454dca1

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed: onPressed, child: const Text('Elevated')),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
<<<<<<< HEAD
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
=======
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
>>>>>>> e3c29ec00c9c825c891d75054c63fcc46454dca1
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: onPressed,
            child: const Text('Filled'),
          ),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled Tonal' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
<<<<<<< HEAD
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
              // Background color
              primary: Theme.of(context).colorScheme.secondaryContainer,
=======
              foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
>>>>>>> e3c29ec00c9c825c891d75054c63fcc46454dca1
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: onPressed,
            child: const Text('Filled Tonal'),
          ),

          OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),

          TextButton(onPressed: onPressed, child: const Text('Text')),
        ],
      ),
    );
  }
}
