import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:share_your_park/screens/tuto/acceuil.dart';
import 'package:share_your_park/screens/views/menu_principal.dart';
import 'package:share_your_park/screens/views/register.dart';
import 'package:provider/provider.dart';
import 'package:share_your_park/screens/views/signup.dart';
import 'package:share_your_park/services/auth.dart';
import 'package:share_your_park/models/user.dart' as userModel;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        home: MenuPrincipal(),
        debugShowCheckedModeBanner: false,
        title: 'SYP Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<userModel.User>(context);
    print(user);
    if (user == null) {
      return Register();
    } else {
      return Signup();
    }
  }
}
