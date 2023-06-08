import 'package:doctorapp/view/allpackages.dart';

class YourAdorablePet extends StatefulWidget {
  const YourAdorablePet({super.key});

  @override
  State<YourAdorablePet> createState() => _YourAdorablePetState();
}

class _YourAdorablePetState extends State<YourAdorablePet> {
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
                          child: Image.asset('assets/images/dogvector.png'),
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
                  'Your Adorable pet is a..',
                  style: toptitleStylebold,
                ),
                Container(
                  height: 25.0.hp,
                  width: 100.0.wp,
                  child: ListView.builder(
                      itemCount: petname.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedindex = index;
                                print(selectedindex);
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(images[index]),
                                Text(
                                  petname[index],
                                  style: toptitleStyle,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 5.0.hp,
                ),
                Text(
                  'Other',
                  style: toptitleStylebold,
                ),
                SizedBox(
                  height: 18.0.hp,
                ),
                ButtonIconButton(
                  press: () {
                    // loginController.loginController(context: context);

                    Get.to(const UploadDocuments());
                  },
                  bordercolor: buttoncolor,
                  text: 'CONTINUE',
                ),
              ])),
        ))));
  }
}
