import 'package:first_flutter/create_history_screen.dart';
import 'package:first_flutter/history_screen.dart';
import 'package:first_flutter/home_utils.dart';
import 'package:flutter/material.dart';

class TailorHome extends StatelessWidget {
  const TailorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TailoR'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Image.asset(
          'assets/logo.png',
          width: 24,
          height: 24,
          color: Theme.of(context).primaryColor,
          colorBlendMode: BlendMode.srcIn,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              /*TODO*/
            },
          ),
          IconButton(
            icon: Icon(Icons.circle_notifications_outlined),
            onPressed: () {
              /*TODO*/
            },
          ),
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () {
              /*TODO*/
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Hi, What would you like to do today?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 16),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/unemployed.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.brown.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/profile.png',
                            width: 72,
                            height: 72,
                          ),
                          /*Icon(
                            Icons.receipt_outlined,
                            size: 72,
                            color: Colors.white,
                          ),*/
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SETUP JOB',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'PROFILE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HistoryScreen();
                      },
                    ),
                  );
                },
                child: HomeItem(
                  title: 'View History of Resume',
                  subtitle:
                      'Access to previously Tailored & Sample Resumes and Cover letter created.',
                  icon: Icons.history,
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return CreateHistoryScreen();
                      },
                    ),
                  );
                },
                child: HomeItem(
                  title: 'Create History for Page',
                  subtitle:
                      'Access to previously Tailored & Sample Resumes and Cover letter created.',
                  icon: Icons.create,
                ),
              ),
              SizedBox(height: 16),
              HomeItem(
                title: 'ATS-Resume Checker',
                subtitle:
                    'Check how well tailored your resume is to any job posting.',
                icon: Icons.bar_chart,
              ),
              SizedBox(height: 16),
              HomeItem(
                title: 'Create a Sample Resume',
                subtitle:
                    'Generate a resume instantly with sample details - no profile needed!',
                icon: Icons.directions_run,
              ),
              SizedBox(height: 16),
              HomeItem(
                title: 'Create a Tailored Resume',
                subtitle:
                    'Generate a resume and cover letter optimized with ATS keywords for your search.',
                icon: Icons.cut,
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
