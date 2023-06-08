import '../allpackages.dart';
import '../owners_details/owners_detailscreen.dart';

class CreateNewPasswordInputFields extends StatefulWidget {
  const CreateNewPasswordInputFields({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordInputFields> createState() =>
      _CreateNewPasswordInputFieldsState();
}

class _CreateNewPasswordInputFieldsState
    extends State<CreateNewPasswordInputFields> {
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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 23,
            right: 25,
          ),
          child: TextFormField(
            obscureText: _isPinnewHidden,
            controller: passwordcontroller,
            style: forminputstyle,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFDDDCDC), width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFDDDCDC), width: 1),
                ),
                hintText: 'New Password',
                contentPadding: const EdgeInsets.all(0),
                suffixIcon: InkWell(
                  onTap: _togglecnewPinView,
                  child: Icon(
                    _isPinnewHidden
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: MediaQuery.of(context).size.height * 0.03,
                    color: Color(0xff292D32),
                  ),
                ),
                prefixIcon: Image.asset('assets/images/pass.png'),
                hintStyle: forminputstyle,
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 23,
            right: 25,
          ),
          child: TextFormField(
            obscureText: _isPinconfirmHidden,
            controller: confirmpasswordcontroller,
            style: forminputstyle,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFDDDCDC), width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFDDDCDC), width: 1),
                ),
                hintText: 'Confirm New Password',
                contentPadding: const EdgeInsets.all(0),
                prefixIcon: Image.asset('assets/images/pass.png'),
                suffixIcon: InkWell(
                  onTap: _toggleconfirmPinView,
                  child: Icon(
                    _isPinconfirmHidden
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: MediaQuery.of(context).size.height * 0.03,
                    color: Color(0xff292D32),
                  ),
                ),
                hintStyle: forminputstyle,
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
        SizedBox(
          height: 28.00.hp,
        ),
        ButtonIconButton(
          press: () {
            // loginController.loginController(context: context);
          },
          bordercolor: buttoncolor,
          text: 'VERIFY',
        ),
        
      ],
    );
  }
}
