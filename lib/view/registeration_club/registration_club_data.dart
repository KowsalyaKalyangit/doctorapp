import '../allpackages.dart';

class RegistrationClubData extends StatefulWidget {
  const RegistrationClubData({Key? key}) : super(key: key);

  @override
  _RegistrationClubDataState createState() => _RegistrationClubDataState();
}

class _RegistrationClubDataState extends State<RegistrationClubData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Center(
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          'REGISTRATION OF CLUB',
          textAlign: TextAlign.center,
          style: toptitleStylebold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    );
  }
}
