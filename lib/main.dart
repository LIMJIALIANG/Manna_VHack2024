import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/botNavBar.dart';
import 'package:manna_vhack2024/pages/account.dart';
import 'package:manna_vhack2024/pages/login.dart';
import 'package:manna_vhack2024/pages/community.dart';
import 'package:manna_vhack2024/pages/ai_assistant.dart';
import 'package:manna_vhack2024/pages/marketplace.dart';
import 'package:manna_vhack2024/pages/soil.dart';
import 'package:manna_vhack2024/pages/claysoil.dart';
import 'package:manna_vhack2024/pages/soil_prepare.dart';
import 'package:manna_vhack2024/pages/pest_management.dart';
import 'package:manna_vhack2024/pages/pests_diseases.dart'; 
import 'package:manna_vhack2024/pages/pests_diseases_tomato.dart'; 
import 'package:manna_vhack2024/pages/pests_diseases_tomato_learn_more.dart'; 

//first default page is home page
void main() => runApp(MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => const login(),
      '/home': (context) => const botNavBar(),
      '/community': (context) => const community(),
      '/ai_assistant': (context) => const ai_assistant(),
      '/marketplace': (context) => const marketplace(),
      '/account': (context) => const account(),
      '/soil': (context) => const soil(),
      '/clay': (context) => const claysoil(),
      '/soil_prepare': (context) => const soil_prepare(),
      '/pest_management': (context) => const pest_management(),
      '/pests_diseases': (context) => const pests_diseases(),
      '/pests_diseases_tomato': (context) => const pests_diseases_tomato(),
      '/pests_diseases_tomato_learn_more': (context) => const pests_diseases_tomato_learn_more(),
    }));
