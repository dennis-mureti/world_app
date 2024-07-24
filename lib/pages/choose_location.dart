import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // to simulate a network request for s user name
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Dennis';
    });

    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'Deveoper, musician and chicken keeper';
    });

    print('$username - $bio');
  }

  // int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a location'),
        centerTitle: true,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //   child: Text('counter is $counter'),
      // ),
    );
  }
}
