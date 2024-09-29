import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/screen/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded
          ),
          onPressed: () {
            Navigator.pop(context); // Change this to your desired navigation
          },
          color: Colors.white, // Change the arrow color here
        ),
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()), // Replace with your home page widget
                (Route<dynamic> route) => false, // This removes all the previous routes
              );
            },
            child: Text(
              'Movie App',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text(
                "My Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // profile image assets\profile_img.jpg
                  const CircleAvatar(
                    backgroundImage: AssetImage("profile/img_profile.jpg"),
                  ),
                  // camera
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: TextButton(
                        onPressed: () {
                          // Your button action
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white, // Text (and icon) color
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text(
                "kiki",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              child: Column(
                children: [
                  // my account
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white30,
                    ),
                    onPressed: () {
                      
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline_outlined,
                            color: Colors.white60,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Text(
                              "My Account",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // notification
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white30,
                    ),
                    onPressed: () {
                      
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white60,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // setting
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white30,
                    ),
                    onPressed: () {
                      
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white60,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // help center
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white30,
                    ),
                    onPressed: () {
                      
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.white60,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Text(
                              "Help Center",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}