import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhtechin_task/core/theme/app_pallete.dart';
import 'package:mhtechin_task/presentation/screens/home_screen.dart';
import 'package:mhtechin_task/presentation/widgets/auth_field.dart';
import 'package:mhtechin_task/presentation/widgets/auth_gradient_button.dart';

class LoginAndSignUpPages extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => LoginAndSignUpPages());

  const LoginAndSignUpPages({super.key});

  @override
  State<LoginAndSignUpPages> createState() => _LoginAndSignUpPagesState();
}

class _LoginAndSignUpPagesState extends State<LoginAndSignUpPages> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController(); // Added name controller
  bool _isLogin = true; // Toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Enables the view to resize when the keyboard is open
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50), // Add some space at the top if needed
              Container(
                width: 220,
                decoration: BoxDecoration(
                  color: AppPallete.borderColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(color: _isLogin ? AppPallete.gradient2 : AppPallete.borderColor),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = true;
                          });
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: _isLogin ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(color: !_isLogin ? AppPallete.gradient2 : AppPallete.borderColor),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = false;
                          });
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: !_isLogin ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                _isLogin ? 'Log In' : 'Sign Up',
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              // Conditionally display the Name field for Sign Up
              if (!_isLogin)
                AuthField(
                  textEditingController: nameController,
                  hintText: 'Name',
                ),
              const SizedBox(height: 15),
              AuthField(
                textEditingController: emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              AuthField(
                textEditingController: passwordController,
                hintText: 'Password',
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              AuthGradientButton(
                buttonText: _isLogin ? 'Log In' : 'Sign Up',
                onPressed: () {
                  if (_isLogin) {
                    Navigator.push(context, HomeScreen.route());
                  } else {
                    Navigator.push(context, HomeScreen.route());
                  }
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isLogin = !_isLogin;
                  });
                },
                child: RichText(
                  text: TextSpan(
                    text: _isLogin ? 'Don\'t have an account?' : 'Already have an account?',
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                        text: _isLogin ? ' Sign Up' : ' Log In',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add space at the bottom
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose(); // Dispose name controller
    super.dispose();
  }
}
