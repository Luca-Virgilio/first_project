import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'This is a title',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('click elevated button');
              },
              child: const Text('elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('click outlined button');
              },
              child: const Text('outlined button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('click text button');
              },
              child: const Text('text button'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.access_time_filled_rounded),
                Text('Row widget'),
                Icon(Icons.access_time_filled_rounded)
              ],
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://thumbs.dreamstime.com/z/pop-art-di-albert-einstein-51720486.jpg'),
          ],
        ),
      ),
    );
  }
}
