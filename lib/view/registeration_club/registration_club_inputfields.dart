import '../allpackages.dart';
import 'registrationclub_detailscreen.dart';

class RegistrationClubInputFields extends StatefulWidget {
  const RegistrationClubInputFields({Key? key}) : super(key: key);

  @override
  State<RegistrationClubInputFields> createState() =>
      _RegistrationClubInputFieldsState();
}

class _RegistrationClubInputFieldsState
    extends State<RegistrationClubInputFields> {
  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  bool _isPinnewHidden = true;

  var passwordcontroller = TextEditingController();
  bool _isPinconfirmHidden = true;

  var confirmpasswordcontroller = TextEditingController();

  void _toggleconfirmPinView() {
    setState(() {
      _isPinconfirmHidden = !_isPinconfirmHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 25,
              ),
              child: Container(
                color: Colors.white,
                height: 7.00.hp,
                width: 90.00.wp,
                child: TextFormField(
                  style: forminputstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: screenbackground, width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: screenbackground, width: 1),
                      ),
                      hintText: 'Full Name',
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        size: 18,
                        color: Color(0xFF292D32),
                      ),
                      hintStyle: formhintstyle,
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 25,
              ),
              child: Container(
                color: Colors.white,
                height: 7.00.hp,
                width: 90.00.wp,
                child: TextFormField(
                  style: forminputstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFDDDCDC), width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: screenbackground, width: 1),
                      ),
                      hintText: 'Phone number',
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                        size: 18,
                        color: Color(0xFF292D32),
                      ),
                      hintStyle: formhintstyle,
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 25,
              ),
              child: Container(
                color: Colors.white,
                height: 7.00.hp,
                width: 90.00.wp,
                child: TextFormField(
                  style: forminputstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFDDDCDC), width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: screenbackground, width: 1),
                      ),
                      hintText: 'Email Id',
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: Color(0xFF292D32),
                      ),
                      hintStyle: formhintstyle,
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                'Address',
                style: toptitleStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 25,
              ),
              child: Container(
                color: Colors.white,
                height: 10.00.hp,
                width: 90.00.wp,
                child: TextFormField(
                  style: forminputstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: screenbackground,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            const BorderSide(color: screenbackground, width: 1),
                      ),
                      hintText: 'Type Here...',
                      hintMaxLines: 5,
                      //contentPadding: const EdgeInsets.only(left: 30),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                      hintStyle: formhintstyle,
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ButtonIconButton(
                press: () {
                  // loginController.loginController(context: context);

                  Get.to(const YourAdorablePet());
                },
                bordercolor: buttoncolor,
                text: 'NEXT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
