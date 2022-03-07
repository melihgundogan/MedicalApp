import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:fsc_ibb/widgets/custom_widgets/text_field.dart';
import 'package:stacked/stacked.dart';
import 'login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final s = MediaQuery.of(context).size;
    
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (BuildContext context, LoginViewModel viewModel, Widget _) {
        return Scaffold(
          backgroundColor: SplashColors().bgColor,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(SplashNetworkImage().splashLogoImage),
                      const SizedBox(
                        height: 64,
                      ),
                      TextFieldInput(
                          textEditingController: _emailController,
                          hintText: "Enter your email",
                          textInputType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFieldInput(
                        textEditingController: _passwordController,
                        hintText: "Enter your password",
                        textInputType: TextInputType.text,
                        isPass: true,
                        textInputAction: TextInputAction.go,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          child: MainText(text: "Log in",size: 13,),
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
                            child: const Text("Don't you have an account?"),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                          GestureDetector(
                            onTap: () {
                             
                            },
                            child: Container(
                              child: Text(
                                "Sign up.",
                                style: TextStyle(fontWeight: FontWeight.bold, color: OnBoardColors.bgColor),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 8),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
                  ),
          ));
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
