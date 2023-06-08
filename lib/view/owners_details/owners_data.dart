import '../allpackages.dart';

class OwnerData extends StatefulWidget {
  const OwnerData({Key? key}) : super(key: key);

  @override
  _OwnerDataState createState() => _OwnerDataState();
}

class _OwnerDataState extends State<OwnerData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
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
          'OWNER DETAILS',
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
