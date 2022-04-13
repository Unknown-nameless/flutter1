import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:exercice/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageConnexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1100,
                child: Container(
                  height: 500,
                  child: Image.asset('images/connexion.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2000,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Veuillez Vous Connectez',
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35),
              LoginForm(),
              SizedBox(height: 125),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(
                                width: 40,
                              ),
                              Text('Facebook'),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.red,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.lockOpen),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Se Connecter'),
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 200,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Votre Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 300,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Votre Mot de Passe',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
