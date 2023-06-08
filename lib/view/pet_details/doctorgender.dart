import '../allpackages.dart';
import 'doctor_phone.dart';

class DoctorGender extends StatefulWidget {
  const DoctorGender({super.key});

  @override
  State<DoctorGender> createState() => _DoctorGenderState();
}

class _DoctorGenderState extends State<DoctorGender> {
  var gendername = ['Male', 'Female'];
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
            Positioned(
              child: Padding(
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
                          '15% Completed',
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
                                    shape: BoxShape.circle,
                                    color: Color(0xffDDE7F5)),
                                child:
                                    Image.asset('assets/images/gender.png'))),
                        Positioned(
                            left: 12.0.wp,
                            child: Container(
                              height: 10.0.hp,
                              width: 20.0.wp,
                              child:
                                  Image.asset('assets/images/uploaddoctor.png'),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Text(
                      'Select Your Gender...',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Container(
                      height: 30.0.hp,
                      width: 90.0.wp,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 6.0.hp,
                                width: 90.0.wp,
                                decoration: BoxDecoration(
                                  color: screenbackground,
                                  border: Border.all(color: screenbackground),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text(
                                  gendername[index],
                                  style: forminputstyle,
                                )),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 18.00.hp,
                    ),
                    ButtonIconButton(
                      press: () {
                        // loginController.loginController(context: context);

                        Get.to(const DoctorPhone());
                      },
                      bordercolor: buttoncolor,
                      text: 'CONTINUE',
                    ),
                  ])),
            ),
          ],
        ))));
  }
}
