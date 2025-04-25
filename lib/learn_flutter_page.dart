import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('stocazzo');
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/deadpool.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.blue : Colors.deepOrange,
                  ),
                  onPressed: () {
                    print('ciao Logan');
                  },
                  child: Text('saluta 1'),
                ),
                OutlinedButton(
                  onPressed: () {
                    print('ciao Hugh');
                  },
                  child: Text('saluta 2'),
                ),
                TextButton(
                  onPressed: () {
                    print('ciao Wolverine');
                  },
                  child: Text('saluta 3'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    print('chiamo i pompieri');
                  },
                  child: const Icon(
                    Icons.local_fire_department,
                    color: Colors.deepOrange,
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.local_police,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    print('chiama gli sbirri');
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool!;
                  });
                }),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                'https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/07/hugh-jackman-recreating-wolverine-meme.jpg'),
          ],
        ),
      ),
    );
  }
}
