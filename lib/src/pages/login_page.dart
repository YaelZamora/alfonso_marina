import 'package:alfonso_marina/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
        centerTitle: true,
      ),
      body: Center(
        child: Neumorphic(
          style: const NeumorphicStyle(
            color: Colors.white,
            shape: NeumorphicShape.concave,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Correo',
                  suffixIcon: Icon(
                    Icons.mail_outline,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Constraseña',
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: NeumorphicButton(
                  onPressed: () => Navigator.popAndPushNamed(context, 'home'),
                  child: const Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  style: const NeumorphicStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              const Spacer(),
              NeumorphicButton(
                style: const NeumorphicStyle(
                  color: Colors.white,
                ),
                onPressed: () {},
                child: NeumorphicText(
                  'Registrate',
                  style: const NeumorphicStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
