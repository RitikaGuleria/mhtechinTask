// import 'package:flutter/material.dart';
// import 'package:mhtechin_task/core/theme/app_pallete.dart';
// import 'package:mhtechin_task/presentation/screens/home_screen.dart';
// import 'package:mhtechin_task/presentation/screens/login_page.dart';
// import 'package:mhtechin_task/presentation/widgets/auth_field.dart';
// import 'package:mhtechin_task/presentation/widgets/auth_gradient_button.dart';
//
// class SignupPage extends StatefulWidget {
//
//   static route() => MaterialPageRoute(builder: (context) => const SignupPage());
//
//   const SignupPage({super.key});
//
//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//
//   final formKey = GlobalKey<FormState>();
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     // formKey.currentState!.validate(); // it will validate every formfield that is descendent to this form an return true if no errors are there.
//     return Scaffold(
//       appBar: AppBar(),
//       resizeToAvoidBottomInset: true,
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Form(
//                 key: formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Sign Up', style: TextStyle(
//                           fontSize: 50, fontWeight: FontWeight.bold),),
//                       const SizedBox(height: 30,),
//                       AuthField(textEditingController: nameController,
//                           hintText: 'Name'),
//                       const SizedBox(height: 15,),
//                       AuthField(textEditingController: emailController,
//                           hintText: 'Email'),
//                       const SizedBox(height: 15,),
//                       AuthField(textEditingController: passwordController,
//                         hintText: 'Password', isObscureText: true,),
//                       const SizedBox(height: 20,),
//                       AuthGradientButton(buttonText: 'Sign Up',
//                         onPressed: () {
//                           Navigator.push(context,HomeScreen.route());
//                         },
//                       ),
//                       const SizedBox(height: 20,),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(context, LoginPage.route());
//                         },
//                         child: RichText(
//                           text: TextSpan(
//                               text: 'Already have an account?', style: Theme
//                               .of(context)
//                               .textTheme
//                               .titleMedium,
//                               children: [
//                                 TextSpan(text: ' Sign In', style: Theme
//                                     .of(context)
//                                     .textTheme
//                                     .titleMedium
//                                     ?.copyWith(color: AppPallete.gradient2,
//                                     fontWeight: FontWeight.bold
//                                 ))
//                               ]),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//
//         )
//      );
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//
// }