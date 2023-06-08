import '../allpackages.dart';
import 'owners_data.dart';

class OwnerDetailsScreen extends StatefulWidget {
  const OwnerDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OwnerDetailsScreen> createState() => _OwnerDetailsScreenState();
}

class _OwnerDetailsScreenState extends State<OwnerDetailsScreen> {
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
            OwnerData(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const OwnerInputFields(),
            // SizedBox(height: 10.00.hp),
          ],
        ),
      ),
    )));
  }
}
