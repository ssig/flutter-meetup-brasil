import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text.rich(
              TextSpan(
                text: 'Seja bem vindo a ',
                style: const TextStyle(fontSize: 24),
                children: [
                  TextSpan(
                    text: widget.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Um ambiente para gerenciamento de evento para compartilhamento de conhecimentos e experiências para fortalecer o mercado de flutter no Brasil.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            TextButton(
              child: Image.asset(
                'assets/images/github.png',
                height: 68,
                width: 68,
              ),
              onPressed: () async {
                final url =
                    Uri.parse('https://github.com/ssig/flutter-meetup-brasil');
                if (!await launchUrl(url)) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'Não foi possível abrir o github do projeto',
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          child: const Text("Ok"),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
