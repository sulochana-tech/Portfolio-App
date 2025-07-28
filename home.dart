import 'package:flutter/material.dart';
import 'package:team_portfolio/custom/skillcontainer.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Sulochana Pokhrel',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('sulochanapokhrel7@gmail.com'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepPurple, Colors.purpleAccent],
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.black),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.black),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail, color: Colors.black),
            title: Text('Contact'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.black),
            title: Text('About'),
            onTap: () {},
          ),
          Divider(color: Colors.black87),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.black),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController massageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyWidget(),
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 124, 129, 134),
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pic.jpg'),
                      radius: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sulochana Pokhrel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 20, 35),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 18, color: Colors.black87),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I am Sulochana Pokhrel, a Computer Engineering student at Lumbini Engineering College. I am passionate about coding, problem-solving, and continuously learning new technologies.',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Skills:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Skillcontainer(
                                text1: 'UI/UX',
                                colorx: Colors.pink,
                                colory: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'Flutter',
                                colorx: Colors.purple,
                                colory: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'Dart',
                                colorx: Colors.greenAccent,
                                colory: Colors.black,
                              ),

                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'HTML/CSS',
                                colorx: Colors.blue,
                                colory: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'Canva',
                                colorx: Colors.purple,
                                colory: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'Javascript',
                                colorx: Colors.red,
                                colory: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Skillcontainer(
                                text1: 'Figma',
                                colorx: Colors.yellow,
                                colory: Colors.pink,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5, height: 15),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 98, 218, 43),
                          Colors.blue,
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Featured Projects',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Fix: Use Wrap or horizontal ListView for the Row
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 189, 55, 55),
                                const Color.fromARGB(255, 203, 150, 80),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.computer),
                              Text(
                                'Learn Computer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Computer Learning App.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink,
                                const Color.fromARGB(255, 116, 58, 197),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.money),
                              Text(
                                'ExpenseTrack',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'daily Expense recorder.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [Colors.pink, Colors.blue],
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.health_and_safety),
                              Text(
                                'HealthTips',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Basic health guide.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 98, 218, 43),
                                Colors.blue,
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.note),
                              Text(
                                'QuickNotes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Simple notes app.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5, height: 15),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 98, 218, 43),
                          Colors.blue,
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Education',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 18, color: Colors.black87),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '• SEE in Technical Stream(3.24/4)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Shanti Secondary School,Arghakhanchi,Lumbini',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          '• +2 in Technical Stream(3.65/4)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Shanti Secondary School,Arghakhanchi,Lumbini',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "• Bachelor's Undergraduate in Computer Engineering",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Lumbini Engineering College,Bhalwari,Rupandehi',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    margin: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 113, 254),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          color: const Color.fromARGB(221, 11, 11, 11),
                        ),
                      ],
                    ),
                    child: Align(
                      child: Text(
                        'Download CV',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 11, 40, 64),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Get In Touch',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 18, color: Colors.black87),
                      ],
                    ),

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.email),
                              Text(
                                '  Email: sulochanapokhrel7@gmail.com',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.phone),
                              Text(
                                '  Mobile no:  +977-986362535',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ), // GitHub alternative
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 25),
                  TextFormField(
                    onTap: () {},
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter your Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    onTap: () {},
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter your email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    onTap: () {},
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.lock_open),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    onTap: () {},
                    controller: massageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Message",
                      prefixIcon: Icon(Icons.message),
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                      print(nameController.text);
                      print(massageController.text);
                      // Handle form submission
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Form submitted successfully!')),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Pressed');
        },
        backgroundColor: Colors.white,
        hoverColor: Colors.white,
        child: Icon(Icons.message, color: Colors.pink),
      ),
    );
  }
}
