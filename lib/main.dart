import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCVPage(),
    );
  }
}

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'), 
        backgroundColor: const Color.fromARGB(255, 7, 238, 255), 
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 189, 255),
              ),
              child: Text(
                'CV Sections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.school_rounded, color: Color.fromARGB(255, 0, 208, 255),), 
              title: const Text('Education'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EducationPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.code_rounded, color: Color.fromARGB(255, 0, 251, 255),),
              title: const Text('Skills'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SkillsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.create_new_folder, color: Color.fromARGB(255, 0, 225, 255),),
              title: const Text('Projects'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.download_done_rounded, color: Color.fromARGB(255, 0, 208, 255),),
              title: const Text('Experience'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExperiencePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              child: Text(
                'RDM', 
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ron Del Mundo', 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '09999724664', 
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '22-02794@g.batstate-u.edu.ph',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'), 
        backgroundColor: const Color.fromARGB(255, 0, 247, 255),
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Elementary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Immaculate Concepcion Montessori School ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2016',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Secondary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Southgate Institute of Malvar',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2022',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Skills Page
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: const Color.fromARGB(255, 0, 217, 255),
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Programming Languages Section
            Text(
              'Programming Languages',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Python',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- Java',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- C++',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            Text(
              'Mobile App Development',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Flutter/Dart',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// Projects Page
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: const Color.fromARGB(255, 0, 229, 255),
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Center(
        child: Text(
          'This is the Projects section.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Experience Page
class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 234),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Center(
        child: Text(
          'This is the Experience section.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}