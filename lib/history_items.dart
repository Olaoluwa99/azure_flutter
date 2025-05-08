import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final Map<String, String> item;
  /*final String id = '';
  final String title = '';
  final String dateTime = '';*/
  const HistoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['id'] ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 6),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      item['mainText'] ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 7,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    item['dateTime'] ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(0),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Text(
            item['title'] ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }
}

final historyList = [
  {
    'id': 'SAM-100000001',
    'title': 'Medical Resume',
    'dateTime': 'March 27 2025, 17:05',
    'mainText':
        'Klein Moretti\nMedical Doctor\n\nTo Secure a challenging and rewarding Medical Doctor position where i can leverage my skills and experience in the Medical line, particularly in areas such as Neurosurgery, Psychiatry and also Anatomy. My experience in this field...',
  },
  {
    'id': 'SAM-100000002',
    'title': 'Psychologist',
    'dateTime': 'April 18 2025, 08:14',
    'mainText':
        'Dwayne Dantes\nPsychologist\n\nTo Secure a challenging and rewarding Medical Doctor position where i can leverage my skills and experience in the Medical line, particularly in areas such as Neurosurgery, Psychiatry and also Anatomy. My experience in this field...',
  },
  {
    'id': 'SAM-100000003',
    'title': 'Medical Resume',
    'dateTime': 'April 24 2025, 18:23',
    'mainText':
        'Sherlock Moriarty\nMedical Doctor\n\nTo Secure a challenging and rewarding Medical Doctor position where i can leverage my skills and experience in the Medical line, particularly in areas such as Neurosurgery, Psychiatry and also Anatomy. My experience in this field...',
  },
  {
    'id': 'SAM-100000004',
    'title': 'Anatomy',
    'dateTime': 'May 03 2025, 11:08',
    'mainText':
        'German Sparrow\nAnatomy\n\nTo Secure a challenging and rewarding Medical Doctor position where i can leverage my skills and experience in the Medical line, particularly in areas such as Neurosurgery, Psychiatry and also Anatomy. My experience in this field...',
  },
];
