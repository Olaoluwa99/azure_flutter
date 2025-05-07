import 'package:flutter/material.dart';

class AnchorOne extends StatefulWidget {
  const AnchorOne({super.key});

  @override
  State<AnchorOne> createState() => _AnchorOneState();
}

class _AnchorOneState extends State<AnchorOne> {
  String carry = 'This is the main text';
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  void _showText() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text('Profile page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text(
              'Hello, Olaoluwa',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('This is a Sub header'),
            SizedBox(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'What is your name?'),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(onPressed: _showText, child: Text('Submit')),
            Text(_displayText, style: TextStyle(fontSize: 18)),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 90.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  'DESIGN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/unemployed.jpg',
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
