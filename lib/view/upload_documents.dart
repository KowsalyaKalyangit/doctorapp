import 'package:doctorapp/view/allpackages.dart';
import 'package:doctorapp/view/pet_details/clinical_details.dart';

class UploadDocuments extends StatefulWidget {
  const UploadDocuments({super.key});

  @override
  State<UploadDocuments> createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  var selectedindex = 0;
  var images = ['assets/images/dog.png', 'assets/images/cat.png'];
  var petname = ['dog', 'cat'];
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
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              '75% Completed',
                              style: threehundredtweleve,
                            ),
                          ),
                        ),
                        Center(
                          child: Stack(
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
                                          color: lightblue),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/document.png')))),
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
                        ),
                        SizedBox(
                          height: 3.0.hp,
                        ),
                        Center(
                          child: Text(
                            'Upload Documents',
                            style: uploadpic,
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Container(
                          height: 7.0.hp,
                          width: 100.0.wp,
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
                                      color: screenbackground, width: 1),
                                ),
                                hintText: 'Your Aadhar number*',
                                contentPadding: const EdgeInsets.all(10),
                                hintStyle: forminputstyle,
                                border: const OutlineInputBorder(
                                  gapPadding: 4,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Text(
                          'Upload Aadhar Card*',
                          style: sixhundredtweleve,
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Center(
                          child: Container(
                              height: 30.0.hp,
                              width: 100.0.wp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: screenbackground),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/upload.png',
                                    height: 10.0.hp,
                                    width: 20.0.wp,
                                  ),
                                  Text(
                                    'Click to upload',
                                    style: toptitleStyle,
                                  ),
                                  SizedBox(
                                    height: 1.0.hp,
                                  ),
                                  Text(
                                    'Size : Max 1mb ',
                                    style: forminputstyle,
                                  )
                                ],
                              )),
                        ),

                        ///pancard
                        SizedBox(
                          height: 2.0.hp,
                        ),

                        Container(
                          height: 7.0.hp,
                          width: 100.0.wp,
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
                                      color: screenbackground, width: 1),
                                ),
                                hintText: 'Your PAN number*',
                                contentPadding: const EdgeInsets.all(10),
                                hintStyle: forminputstyle,
                                border: const OutlineInputBorder(
                                  gapPadding: 4,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Text(
                          'Upload PAN Card*',
                          style: sixhundredtweleve,
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Center(
                          child: Container(
                              height: 30.0.hp,
                              width: 100.0.wp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: screenbackground),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/upload.png',
                                    height: 10.0.hp,
                                    width: 20.0.wp,
                                  ),
                                  Text(
                                    'Click to upload',
                                    style: toptitleStyle,
                                  ),
                                  SizedBox(
                                    height: 1.0.hp,
                                  ),
                                  Text(
                                    'Size : Max 1mb ',
                                    style: forminputstyle,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Text(
                          'Upload Degree Documents',
                          style: sixhundredtweleve,
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Center(
                          child: Container(
                              height: 30.0.hp,
                              width: 100.0.wp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: screenbackground),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/upload.png',
                                    height: 10.0.hp,
                                    width: 20.0.wp,
                                  ),
                                  Text(
                                    'Click to upload',
                                    style: toptitleStyle,
                                  ),
                                  SizedBox(
                                    height: 1.0.hp,
                                  ),
                                  Text(
                                    'Size : Max 1mb ',
                                    style: forminputstyle,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Text(
                          'Upload licensing  documents',
                          style: sixhundredtweleve,
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Center(
                          child: Container(
                              height: 30.0.hp,
                              width: 100.0.wp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: screenbackground),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/upload.png',
                                    height: 10.0.hp,
                                    width: 20.0.wp,
                                  ),
                                  Text(
                                    'Click to upload',
                                    style: toptitleStyle,
                                  ),
                                  SizedBox(
                                    height: 1.0.hp,
                                  ),
                                  Text(
                                    'Size : Max 1mb ',
                                    style: forminputstyle,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 3.0.hp,
                        ),
                        Center(
                          child: ButtonIconButton(
                            press: () {
                              // loginController.loginController(context: context);

                              Get.to(const ClinicalDocuments());
                            },
                            bordercolor: buttoncolor,
                            text: 'CONTINUE',
                          ),
                        ),
                      ])),
            ),
          ],
        ))));
  }
}
