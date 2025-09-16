import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print('Logout clicked');
            },
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    ('assets/jes.jpg'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Jester Patriarca',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'ID: 544160',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    Text(
                      '3rd Year : Bachelor of Science In Information Technology ',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('jesteraboy@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('09384803714'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Mintal Tugbok District, Davao City, Philippines'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            const Text(
              'Subjects',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                title: Text('CCE106L'),
                subtitle: Text(
                  'Instructor: Michael Aguido Velez\nSchedule: Mon/Friday 1:30 - 3:30 PM',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                title: Text('PHYS101L'),
                subtitle: Text(
                  'Instructor: Marife Lloren Macanlay\nSchedule: Mon/Friday 3:30 - 5:30 PM',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                title: Text('IT11L'),
                subtitle: Text(
                  'Instructor: Jhun Bart Macirin\nSchedule: Mon/Friday 5:30 - 7:30 PM',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add Subject Clicked!');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: const Color(0xFFF8F6FA),
    );
  }
}