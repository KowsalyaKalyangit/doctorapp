 

import 'package:doctorapp/view/allpackages.dart';
 

import 'view/splash_screen.dart';

// void main() async {
//   checkLogin();
//   runApp(const MyApp());
// }
Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // await checkLogin();

  runApp(const MyApp());
}

String? token;
// checkLogin() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   token = sharedPreferences.getString(Constants.authToken);
//   log('tokeen');
//   log(token.toString());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('tokennnnn----${token}');

    return GetMaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: bgcolor),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
