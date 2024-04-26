import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Radio Button',
      home: MyHomePage(title: 'Radio Button'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedboleto = 'Ninguno';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(' Boleto seleccionado: $selectedboleto',
              style: const TextStyle(fontSize: 25)),
          const SizedBox(height: 45),
          SizedBox(
            width: 300,
            child: RadioMenuButton(
              value: 'MonLaferte',
              groupValue: selectedboleto,
              onChanged: (selectedvalor) {
                setState(() => selectedboleto = selectedvalor!);
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 80,
                    child: Image.network(
                        'https://raw.githubusercontent.com/nkmserrano/practica1_6J_IOS/main/monlaferte.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Mon Laferte', style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 45),
          SizedBox(
            width: 300,
            child: RadioMenuButton(
              value: 'Belanova',
              groupValue: selectedboleto,
              onChanged: (selectedvalor) {
                setState(() => selectedboleto = selectedvalor!);
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 80,
                    child: Image.network(
                        'https://raw.githubusercontent.com/nkmserrano/practica1_6J_IOS/main/mygbelanova.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Belanova', style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 45),
          SizedBox(
            width: 300,
            child: RadioMenuButton(
              value: 'Luis Miguel',
              groupValue: selectedboleto,
              onChanged: (selectedvalor) {
                setState(() => selectedboleto = selectedvalor!);
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                elevation: const MaterialStatePropertyAll(2),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 80,
                    child: Image.network(
                        'https://raw.githubusercontent.com/nkmserrano/img_FlutterFlow_IOS_6J/main/Act12_NavBar_FlutterFlow/luismi.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Luis Miguel', style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
