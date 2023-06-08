import '../allpackages.dart';
import 'registration_club_data.dart';

class RegistrationClubScreen extends StatefulWidget {
  const RegistrationClubScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationClubScreen> createState() => _RegistrationClubScreenState();
}

class _RegistrationClubScreenState extends State<RegistrationClubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/background.png',
          ),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            RegistrationClubData(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const RegistrationClubInputFields(),
            // SizedBox(height: 10.00.hp),
          ],
        ),
      ),
    )));
  }
}
