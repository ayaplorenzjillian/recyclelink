import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  const Fact({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 216, 253, 216),
      ),
      backgroundColor: const Color.fromARGB(255, 216, 253, 216), // Setting background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adding horizontal padding
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text(
                'My Account',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person,
                    size: 50,
                  ),
                  const SizedBox(width: 10), // Add horizontal space between icon and username
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins', // Set font family
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add vertical space between "Username" and "Subscription"
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins', // Set font family
                    ),
                  ),
                    const SizedBox(height: 20), // Add vertical space between "Username" and "Subscription"
                  const Text(
                    'Subscription',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins', // Set font family
                    ),
                  ),
                  const SizedBox(height: 20), // Add vertical space between "Username" and "Subscription"
                  const Text(
                    'ADD TEXT',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins', // Set font family
                    ),
                  ),
                  const SizedBox(height: 20), // Add vertical space between "Username" and "Subscription"
                  const Text(
                    'ADD TEXT',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins', // Set font family
                    ),
                  ),
              const SizedBox(height: 200, width: 50,), // Adding margin from subscription text to button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen (homepage)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 216, 253, 216),
                    disabledBackgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(height: 12), // Adding additional vertical space at the bottom
            ],
          ),
        ),
      ),
    );
  }

}