import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/auth/login/bloc/login_bloc.dart';
import 'package:parking_admin/components/pages/auth/registration/ui/registration_page.dart';

class LoginPage extends StatefulWidget {
  static const route = "/login";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final LoginBloc _loginBloc = LoginBloc();

  String _username = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    _loginBloc.add(InitializeWaitState());
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _loginBloc.add(
        MakeLoginEvent(
          context: context,
          username: _username,
          password: _password,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/underground_parking.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.01),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: BlocBuilder<LoginBloc, LoginState>(
                          bloc: _loginBloc,
                          builder: (context, state) {
                            return Form(
                              key: _formKey,
                              child: SizedBox(
                                height: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(labelText: 'Username'),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your username';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) => _username = value!,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(labelText: 'Password'),
                                      obscureText: true,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) => _password = value!,
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                                        child: ElevatedButton(
                                          onPressed: _submitForm,
                                          child: const Text('Login'),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacementNamed(
                                                context,
                                                RegistrationPage.route
                                            );
                                          },
                                          child: const Text(
                                            "No account",
                                            style: TextStyle(
                                                color: Colors.blue
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    if (state is LoginErrorState)
                                      Center(
                                        child: Text(
                                          state.exception.toString(),
                                          style: const TextStyle(color: Colors.red),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
