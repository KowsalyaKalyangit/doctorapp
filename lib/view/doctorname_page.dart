import 'allpackages.dart';

class DoctorName extends StatefulWidget {
  const DoctorName({super.key});

  @override
  State<DoctorName> createState() => _DoctorNameState();
}

class _DoctorNameState extends State<DoctorName> {
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
                child: Stack(
          children: [
            Container(
                height: 100.0.hp,
                width: 100.0.wp,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  fit: BoxFit.fill,
                ))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 10),
                        child: Image.asset('assets/images/progress.png'),
                      ),
                      Positioned(
                          left: 2.0.wp,
                          child: Image.asset('assets/images/foot.png'))
                    ],
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '0% Completed',
                        style: threehundredtweleve,
                      ),
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
                                  shape: BoxShape.circle, color: lightblue),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/hand.png')))),
                      Positioned(
                          left: 12.0.wp,
                          child: Container(
                            height: 10.0.hp,
                            width: 20.0.wp,
                            child: Image.asset(
                              'assets/images/uploaddoctor.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5.0.hp,
                  ),
                  Text(
                    'Share your Good name…',
                    style: uploadpic,
                  ),
                  SizedBox(
                    height: 5.0.hp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                      right: 25,
                    ),
                    child: Container(
                      height: 7.0.hp,
                      width: 90.0.wp,
                      color: screenbackground,
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
                                  color: screenbackground, width: 1),
                            ),
                            hintText: 'Your name*',
                            contentPadding: const EdgeInsets.all(10),
                            hintStyle: forminputstyle,
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

                      Get.to(const DoctorGender());
                    },
                    bordercolor: buttoncolor,
                    text: 'CONTINUE',
                  ),
                ])),
          ],
        ))));
  }
}
