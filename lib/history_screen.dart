import 'package:first_flutter/history_items.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text('History Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),*/
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SearchBar(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
                hintText: 'Search...',
                onChanged: (value) {
                  // Handle search logic
                },
              ),
              SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                  itemCount: historyList.length,
                  itemBuilder: (context, index) {
                    final history = historyList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: HistoryItem(item: history),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryScreen22 extends StatelessWidget {
  const HistoryScreen22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchBar(
          hintText: 'Search...',
          onChanged: (value) {
            // Handle search logic
          },
        ),
      ),
    );
  }
}
