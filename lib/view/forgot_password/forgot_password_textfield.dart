import '../allpackages.dart';

class ForgotPasswordInputFields extends StatefulWidget {
  const ForgotPasswordInputFields({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordInputFields> createState() =>
      _ForgotPasswordInputFieldsState();
}

class _ForgotPasswordInputFieldsState extends State<ForgotPasswordInputFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isPinnewHidden = true;

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 7.00.hp, width: 90.00.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              style: forminputstyle,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: appcolor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: screenbackground, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  prefixIcon: Image.asset('assets/images/email.png'),
                  hintText: 'Email id',
                  contentPadding: const EdgeInsets.only(left: 10),
                  //hintStyle: formhintstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
          SizedBox(height: 32.00.hp),
          ButtonIconButton(
            press: () {
              if (formKey.currentState!.validate()) {
                // loginController.loginController(context: context);

                Get.to(ForgotOTPScreen());
              }
            },
            bordercolor: buttoncolor,
            text: 'SEND OTP',
          ),
        ],
      ),
    );
  }
}
