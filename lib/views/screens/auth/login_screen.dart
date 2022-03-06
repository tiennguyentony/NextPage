import 'package:flutter/material.dart';
import 'package:nextpage/constant.dart';
import 'package:nextpage/views/screens/auth/signup_screen.dart';
import 'package:nextpage/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/gradient.png'),
              )
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('NextPage',
                    style: TextStyle(
                        fontSize: 50,
                        color: buttonColor,
                        
                        fontWeight: FontWeight.w900)),
                  const SizedBox(
                  height: 20,
                ),
                const Text('Login',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontFamily:'Simplicity',
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextInputField(
                      controller: _emailController,
                      labelText: 'Email',
                      icon: Icons.email,
                    )),
                const SizedBox(
                  height: 25,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextInputField(
                      controller: _passwordController,
                      labelText: 'Password',
                      icon: Icons.lock,
                      isObscured: true,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: InkWell(
                        onTap: () => authController.loginUser(_emailController.text, _passwordController.text),
                        child: const Center(
                            child: Text('Login',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                     fontFamily:'Simplicity',)
                                )
                          )
                      )
                ), 
                const SizedBox(height: 15,  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('Don\'t have an account ?   ', style: TextStyle(fontSize: 20, color: Colors.black,  fontFamily:'Simplicity',),
                    ),
                    InkWell (
                      onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                      ),
                      child: const Text('Register', style: TextStyle(fontSize: 20, color: Colors.black,  fontFamily:'Simplicity', ),
                    ),
                    ),
                  ],
                ) 
              ],
            )));
  }
}
