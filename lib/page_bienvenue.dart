import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exercice/delayed_animation.dart';
import 'package:exercice/main.dart';
import 'package:exercice/page_connexion.dart';
import 'package:google_fonts/google_fonts.dart';

class PageBienvenue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 24, 94, 64),
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
                  child: Image.asset('images/ramadan.png'),
                ),
              ),
              DelayedAnimation(
                delay: 1800,
                child: Container(
                  height: 300,
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13)),
                    child: Text('CONTINUEZ'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageConnexion(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
