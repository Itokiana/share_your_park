import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:share_your_park/controllers/controller.dart';
import 'package:share_your_park/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:share_your_park/views/nfc/scan_nfc.dart';
import 'package:share_your_park/views/nfc/testNfc.dart';
import 'package:share_your_park/views/screens/baseCarteMap.dart';
import 'package:share_your_park/views/screens/mapbox/listeParking.dart';
import 'package:share_your_park/views/screens/mapbox/slideListParking.dart';
import 'package:share_your_park/views/screens/register.dart';
import 'package:share_your_park/views/screens/signup.dart';
//import 'package:share_your_park/views/tuto/acceuil.dart';
import 'models/user.dart' as userModel;
//import 'package:share_your_park/views/screens/notification.dart';

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
        home: ScanNFC(),
        debugShowCheckedModeBanner: false,
        title: 'SYP Demo',
        theme: ThemeData(),
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
