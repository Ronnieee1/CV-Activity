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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  // Hardcoded credentials
  final String _correctUsername = "Ron DelMundo";
  final String _correctPassword = "rongabriel16";

  void _login() {
    if (_formKey.currentState!.validate()) {
      if (_usernameController.text == _correctUsername &&
          _passwordController.text == _correctPassword) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyCVPage()),
        );
      } else {
        setState(() {
          _errorMessage = "Incorrect username or password. Please try again.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to your Curriculum Vitae!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 32),
                if (_errorMessage != null)
                  Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCVPage extends StatelessWidget {
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
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
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