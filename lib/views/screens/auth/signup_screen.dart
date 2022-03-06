import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextpage/constant.dart';
import 'package:nextpage/controllers/auth_controller.dart';
import 'package:nextpage/views/screens/auth/login_screen.dart';
import 'package:nextpage/views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({ Key? key }) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        fontSize: 35,
                        color: buttonColor,
                        fontWeight: FontWeight.w900)),
                const Text(' Register',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
              const SizedBox(
              height: 25,
            ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage('https://www.pngfind.com/pngs/m/676-6764065_default-profile-picture-transparent-hd-png-download.png'),
                      backgroundColor: backgroundColor,
                    ),
                    Positioned(
                      bottom:-10,
                      left: 80,
                      child: IconButton(
                        onPressed: () => authController.pickImage(),
                        icon: const Icon(Icons.add_a_photo)
                      )
                    )
                  ],
                ),
                   const SizedBox(
                  height: 15,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextInputField(
                      controller: _usernameController,
                      labelText: 'Username',
                      icon: Icons.person,
                      
                    )),
                const SizedBox(
                  height: 15,
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
                  height: 15,
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
                        onTap: () => authController.registerUser(
                          _usernameController.text,
                         _emailController.text,
                          _passwordController.text, 
                          authController.profilePhoto),
                        child: const Center(
                            child: Text('Register',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)
                                )
                          )
                      )
                ), 
                const SizedBox(height: 15,  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?   ', style: TextStyle(color: buttonColor, fontSize: 20, ),
                    ),
                    InkWell (
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen())),
                      child:Text('Login', style: TextStyle(fontSize: 20, color: buttonColor),
                    ),
                    ),
                  ],
                ) 
              ],
            )));
  }
}