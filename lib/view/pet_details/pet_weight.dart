import '../allpackages.dart';

class PetWeight extends StatefulWidget {
  const PetWeight({super.key});

  @override
  State<PetWeight> createState() => _PetWeightState();
}

class _PetWeightState extends State<PetWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgcolor,
          elevation: 0,
          centerTitle: false,
          leadingWidth: 100,
          leading: Image.asset(
            'assets/images/appbarlogo.png',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 20),
              child: Text(
                'SKIP',
                style: forminputstyle,
              ),
            )
          ],
        ),
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
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/progress.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '0% Completed',
                    style: forminputstyle,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 10.0.hp,
                      width: 35.0.wp,
                      // color: Colors.green.shade100,
                    ),
                    Positioned(
                        top: 1.0.hp,
                        child: Container(
                          height: 8.0.hp,
                          width: 20.0.wp,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffDDE7F5)),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: iconcolor,
                          ),
                        )),
                    Positioned(
                        left: 12.0.wp,
                        child: Container(
                          height: 10.0.hp,
                          width: 20.0.wp,
                          child: Image.asset('assets/images/doctor2.png'),
                        )),
                  ],
                ),
                SizedBox(
                  height: 5.0.hp,
                ),
                Text(
                  'How much does Krish weight',
                  style: toptitleStyle,
                ),
                SizedBox(
                  height: 5.0.hp,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: 7.0.hp,
                    width: 90.0.wp,
                    color: screenbackground,
                    // padding: const EdgeInsets.only(
                    //   left: 23,
                    //   right: 25,
                    // ),
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
                            borderSide: const BorderSide(
                                color: Color(0xFFDDDCDC), width: 1),
                          ),
                          hintText: 'Weight in pounds or kg',
                          contentPadding: const EdgeInsets.all(10),
                          hintStyle: formhintstyle,
                          border: const OutlineInputBorder(
                            gapPadding: 4,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.00.hp,
                ),
                ButtonIconButton(
                  press: () {
                    // loginController.loginController(context: context);

                    Get.to(const Qualification());
                  },
                  bordercolor: buttoncolor,
                  text: 'CONTINUE',
                ),
              ])),
        ))));
  }
}
