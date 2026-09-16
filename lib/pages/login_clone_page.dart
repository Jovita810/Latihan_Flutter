//import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {

//     //pindah login clone sebelumny ksini
//     //buat jd resauble component stiap wdiget

//     return const Placeholder();
//   }
// }

   import 'package:flutter/material.dart';
   import 'package:flutter_svg/flutter_svg.dart';
   import '../components/custom_textfield.dart';
   import '../components/custom_button.dart';

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  bool rememberMe = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 60),

              SvgPicture.asset(
                'images/logolinkedin.svg',
                width: 100,
              ),

              SizedBox(height: 16),
            
              Text(
                "Sign in",
                style: TextStyle(fontSize: 33,
                fontWeight: FontWeight.bold,
                ),
              ),
            
              Text(
                "Stay updated on your professional world",
                style: TextStyle(fontSize: 15,
                ),
              ),

              SizedBox(height: 20),

              CustomTextfield(
                txtController: emailController,
                myHint: "Email or Phone",
              ),
              
              SizedBox(height: 19),

              CustomTextfield(
                txtController: passwordController,
                myHint: "Password",
              ),

              SizedBox(height: 12),

              Text(
                "Forgot password?",
                style: TextStyle(fontSize: 15,
                color: Color.fromRGBO(58, 96, 183, 1),
                fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (bool? newValue) {
                    setState(() {
                    rememberMe = newValue!;
                    });
                   },
                  ),

                  Text(
                    "Remember me. ",
                    style: TextStyle(fontSize: 15,
                    ),
                  ),
                  
                  Text(
                    "Learn More",
                    style: TextStyle(fontSize: 15,
                    color: Color.fromRGBO(58, 96, 183, 1),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    CustomButton(
                      myButtonText: "Sign in",
                      onTap: () {},
                    ),
                    SizedBox(height: 9),

                    Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "or",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                    
                    SizedBox(height: 9),

                    CustomButton(
                      myButtonText: "Sign in with Google",
                      onTap: () {},
                    ),

                    SizedBox(height: 9),

                    CustomButton(
                      myButtonText: "Sign in with Apple",
                      onTap: () {},
                    ),

                     SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New to Linkedin?",
                          style: TextStyle(fontSize: 15
                          ),
                        ),
                        
                        Text(
                          "Join now",
                          style: TextStyle(fontSize: 15,
                          color: Color.fromRGBO(58, 96, 183, 1),
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}