import 'package:flutter/material.dart';
import 'package:kango/data/entities/user.dart';
import 'package:kango/services/auth.dart';
import 'package:kango/services/user_provider.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  Future<User?> _submitForm(UserProvider userProvider) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      return await AuthService.login(
          loginController.text, passwordController.text);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Authentication'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: loginController,
                  decoration: const InputDecoration(labelText: 'Login'),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 5) {
                      return 'Login must be at least 5 characters long.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Password must be at least 6 characters long.';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                FilledButton(
                  onPressed: () async {
                    final user = await _submitForm(userProvider);
                    if (user == null) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('failed to login'),
                          ),
                        );
                      }
                    } else {
                      userProvider.currentUser = user;
                      if (context.mounted) {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
