import '../allpackages.dart';

class PetEnergy extends StatefulWidget {
  const PetEnergy({super.key});

  @override
  State<PetEnergy> createState() => _PetEnergyState();
}

class _PetEnergyState extends State<PetEnergy> {
  var energylevel = ['Energetic', 'Moderately active', 'Inactive'];
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
                  'Krish/s typical activity level select all that apply',
                  style: toptitleStyle,
                ),
                SizedBox(
                  height: 1.0.hp,
                ),
                Text(
                  'Select all that apply',
                  style: forminputstyle,
                ),
                SizedBox(
                  height: 5.0.hp,
                ),
                Container(
                  height: 30.0.hp,
                  width: 80.0.wp,
                  child: ListView.builder(
                      itemCount: energylevel.length,
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
                              energylevel[index],
                              style: forminputstyle,
                            )),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10.00.hp,
                ),
                ButtonIconButton(
                  press: () {
                    // loginController.loginController(context: context);

                    Get.to(const PetBodyType());
                  },
                  bordercolor: buttoncolor,
                  text: 'CONTINUE',
                ),
              ])),
        ))));
  }
}
