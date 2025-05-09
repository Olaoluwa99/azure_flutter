import 'package:flutter/material.dart';

class CreateHistoryScreen extends StatefulWidget {
  const CreateHistoryScreen({super.key});

  @override
  State<CreateHistoryScreen> createState() => _CreateHistoryScreenState();
}

class _CreateHistoryScreenState extends State<CreateHistoryScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController dateTimeController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();

  void _printText() {
    print('Text entered: ${idController.text}');
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Entered: ${idController.text}')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create History'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Fill in the required details in the required fields',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              /*TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Input the ID of the history',
                ),
              ),*/
              SizedBox(height: 16),
              MainTextField(controller: idController, labelText: 'HistoryID'),
              SizedBox(height: 16),
              MainTextField(
                controller: companyNameController,
                labelText: 'Company name',
              ),
              SizedBox(height: 16),
              MainTextField(
                controller: dateTimeController,
                labelText: 'Date & Time',
              ),
              SizedBox(height: 16),
              MainTextField(
                controller: summaryController,
                labelText: 'Resume Summary',
                minLines: 7,
                maxLines: 16,
              ),
              SizedBox(height: 48),
              /*FilledButton(
                onPressed: _printText,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _printText,
        label: Text('Submit'),
        icon: Icon(Icons.check),
      ),
    );
  }
}

class MainTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final int minLines;
  final int maxLines;
  const MainTextField({
    super.key,
    this.minLines = 1,
    this.maxLines = 1,
    required this.labelText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        alignLabelWithHint: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      textInputAction: TextInputAction.next,
      minLines: minLines,
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.top,
    );
  }
}
