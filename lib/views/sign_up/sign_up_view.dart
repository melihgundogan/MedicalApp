import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:fsc_ibb/widgets/custom_widgets/text_field.dart';
import 'package:stacked/stacked.dart';
import '../login/widget/login_gap.dart';
import 'sign_up_view_model.dart';
          
class SignUpView extends StatefulWidget {
  const SignUpView({Key key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  Uint8List _image;
  final bool _isLoading = false;

  @override
  Widget build(BuildContext context) {

    final s = MediaQuery.of(context).size;
    
    return ViewModelBuilder<SignUpViewModel>.reactive(
      builder: (BuildContext context, SignUpViewModel viewModel, Widget _) {
        return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      SplashNetworkImage().splashLogoImage,
                      height: 64,
                    ),
                    const Gap(),
                    Stack(
                      children: [
                        const CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                    "https://t4.ftcdn.net/jpg/02/15/84/43/360_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg"),
                              ),
                        Positioned(
                            bottom: -10,
                            left: 80,
                            child: IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.add_a_photo),
                            )),
                      ],
                    ),
                    const Gap(),
                    TextFieldInput(
                        textEditingController: _emailController,
                        hintText: "Enter your email",
                        textInputType: TextInputType.emailAddress),
                    const Gap(),
                    TextFieldInput(
                      textEditingController: _passwordController,
                      hintText: "Enter your password",
                      textInputType: TextInputType.text,
                      isPass: true,
                    ),
                    const Gap(),
                    TextFieldInput(
                      textEditingController: _bioController,
                      hintText: "Enter your name",
                      textInputType: TextInputType.text,
                    ),
                    const Gap(),
                    TextFieldInput(
                      textEditingController: _bioController,
                      hintText: "Enter your surname",
                      textInputType: TextInputType.text,
                    ),
                    const Gap(),
                    TextFieldInput(
                        textEditingController: _usernameController,
                        hintText: "Enter your date of birth",
                        textInputType: TextInputType.text),
                    const Gap(),
                    TextFieldInput(
                        textEditingController: _usernameController,
                        hintText: "Enter your city",
                        textInputType: TextInputType.text),
                    const Gap(),
                    TextFieldInput(
                        textEditingController: _usernameController,
                        hintText: "Enter your country",
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,),        
                    const Gap(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        child:
                           MainText(
                             text: 'Sign Up',
                             size: 13,
                           ),
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: ShapeDecoration(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          color: MainColors().appGreen,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text("Do you have an account?"),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: const Text(
                              "Login.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ));
      },
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}


