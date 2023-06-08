import 'package:doctorapp/view/pet_details/date_package.dart';
import 'package:doctorapp/view/pet_details/time.dart';

import '../allpackages.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var holidayindex = 0;
  late DateTime _selectedDate;
  static const orange = Color(0xFFFE9A75);
  static const dark = Color(0xFF333A47);

  final _defaultTimeRange = TimeRangeResult(
    const TimeOfDay(hour: 14, minute: 00),
    const TimeOfDay(hour: 15, minute: 00),
  );
  TimeRangeResult? _timeRange;

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }

  var dropdownValue = '';
  var selectedtyped = ['30 minutes', '1 hr 30 mins', '2 hrs'];
  var holiday = ['All Saturday', 'All Sunday'];
  var holidays = ['Full day off', 'Morning off', 'Evening off'];
  var type;
  var checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Common Holiday',
              style: sixhundredtweleve,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              height: 5.0.hp,
              width: 100.0.wp,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: holiday.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    holidayindex = index;
                                  });
                                },
                                child: Container(
                                  height: 3.0.hp,
                                  width: 6.0.wp,
                                  decoration: BoxDecoration(
                                    gradient: holidayindex == index
                                        ? const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color(0xff0F52BA),
                                              Color(0xff003586)
                                            ],
                                          )
                                        : const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.white,
                                              Colors.white,
                                            ],
                                          ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                              holidayindex == index
                                  ? Positioned(
                                      child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          holidayindex = index;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ))
                                  : Container()
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2.0.wp,
                        ),
                        Text(
                          holiday[index].toString(),
                          style: fourhundredtweleve,
                        ),
                        SizedBox(
                          width: 10.0.wp,
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              height: 8.00.hp,
              width: 200.00.wp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: screenbackground,
              ),
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Text(
                      'Select the month',
                      style: forminputstyle,
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      //  label: Text('Search breed name'),
                      suffixIcon: Image.asset('assets/images/calendar.png'),
                      hintText: 'April,2023',
                      hintStyle: fourhundredtweleve,
                      contentPadding: const EdgeInsets.only(
                        left: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            CalendarTimeline(
              showYears: true,
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
              onDateSelected: (date) => setState(() => _selectedDate = date),
              leftMargin: 0,
              monthColor: Colors.white,
              dayColor: Colors.black,
              dayNameColor: Colors.white,
              activeDayColor: Colors.white,
              activeBackgroundDayColor: buttoncolor,
              dotsColor: buttoncolor,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en',
            ),
            SizedBox(height: 3.00.hp),

            // Center(
            //   child: Text(
            //     'Selected date is $_selectedDate',
            //     style: const TextStyle(color: Colors.white),
            //   ),
            // )
            Text(
              'Morning',
              style: sixhundredtweleve,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 7.00.hp,
                    width: 40.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Starting Time',
                            style: forminputsmall,
                          ),
                          Container(
                            height: 4.0.hp,
                            width: 45.0.wp,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: forminputcolor,
                                        fontWeight: FontWeight.w400)),
                                hint: Text('2.30 PM',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.00.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))),
                                // onChanged: (String? newValue) async {
                                //   setState(() {
                                //     selectstate = newValue.toString();
                                //   });
                                // },
                                icon: const Icon(Icons.arrow_drop_down),

                                items: selectedtyped
                                    .map<DropdownMenuItem<String>>((items) {
                                  return DropdownMenuItem<String>(
                                    value: items,
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 4),
                                        child: Text(items.toString(),
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 10.00.sp,
                                                    color: forminputcolor,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  );
                                }).toList(),
                                value: type,
                                onChanged: (value) {
                                  setState(() {
                                    type = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 7.00.hp,
                    width: 40.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ending Time',
                            style: forminputsmall,
                          ),
                          Container(
                            height: 4.0.hp,
                            width: 45.0.wp,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: forminputcolor,
                                        fontWeight: FontWeight.w400)),
                                hint: Text('8 PM',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.00.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))),
                                // onChanged: (String? newValue) async {
                                //   setState(() {
                                //     selectstate = newValue.toString();
                                //   });
                                // },
                                icon: const Icon(Icons.arrow_drop_down),

                                items: selectedtyped
                                    .map<DropdownMenuItem<String>>((items) {
                                  return DropdownMenuItem<String>(
                                    value: items,
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 4),
                                        child: Text(items.toString(),
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 10.00.sp,
                                                    color: forminputcolor,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  );
                                }).toList(),
                                value: type,
                                onChanged: (value) {
                                  setState(() {
                                    type = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 1.0.hp,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 7.0.hp,
                  width: 60.0.wp,
                  child: Row(
                    children: [
                      Checkbox(
                          value: checkBoxValue,
                          activeColor: const Color.fromARGB(255, 19, 51, 77),
                          onChanged: (bool? newValue) {
                            setState(() {
                              checkBoxValue = newValue!;
                            });
                          }),
                      Text(
                        'Same Everyday',
                        style: sixhundredtweleve,
                      ),
                    ],
                  )),
            ),

            Text(
              'Evening',
              style: sixhundredtweleve,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 7.00.hp,
                    width: 40.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Starting Time',
                            style: forminputsmall,
                          ),
                          Container(
                            height: 4.0.hp,
                            width: 40.0.wp,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: forminputcolor,
                                        fontWeight: FontWeight.w400)),
                                hint: Text('2.30 PM',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.00.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))),
                                // onChanged: (String? newValue) async {
                                //   setState(() {
                                //     selectstate = newValue.toString();
                                //   });
                                // },
                                icon: const Icon(Icons.arrow_drop_down),

                                items: selectedtyped
                                    .map<DropdownMenuItem<String>>((items) {
                                  return DropdownMenuItem<String>(
                                    value: items,
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 4),
                                        child: Text(items.toString(),
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 10.00.sp,
                                                    color: forminputcolor,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  );
                                }).toList(),
                                value: type,
                                onChanged: (value) {
                                  setState(() {
                                    type = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 7.00.hp,
                    width: 40.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ending Time',
                            style: forminputsmall,
                          ),
                          Container(
                            height: 4.0.hp,
                            width: 45.0.wp,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: forminputcolor,
                                        fontWeight: FontWeight.w400)),
                                hint: Text('8 PM',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.00.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))),
                                // onChanged: (String? newValue) async {
                                //   setState(() {
                                //     selectstate = newValue.toString();
                                //   });
                                // },
                                icon: const Icon(Icons.arrow_drop_down),

                                items: selectedtyped
                                    .map<DropdownMenuItem<String>>((items) {
                                  return DropdownMenuItem<String>(
                                    value: items,
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 4),
                                        child: Text(items.toString(),
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 10.00.sp,
                                                    color: forminputcolor,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  );
                                }).toList(),
                                value: type,
                                onChanged: (value) {
                                  setState(() {
                                    type = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            SizedBox(
              height: 1.0.hp,
            ),
            Container(
              height: 7.0.hp,
              width: 45.0.wp,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                title: Text(
                  'Same Everyday',
                  style: toptitleStyle,
                ),
                leading: Checkbox(
                    value: checkBoxValue,
                    activeColor: const Color.fromARGB(255, 19, 51, 77),
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    }),
              ),
            ),

            Text(
              'Common Holiday',
              style: toptitleStyle,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              height: 5.0.hp,
              width: 100.0.wp,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: holidays.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    holidayindex = index;
                                  });
                                },
                                child: Container(
                                  height: 3.0.hp,
                                  width: 6.0.wp,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff0F52BA),
                                        Color(0xff003586)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                              holidayindex == index
                                  ? Positioned(
                                      child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          holidayindex = index;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ))
                                  : Container()
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.0.wp,
                        ),
                        Text(
                          holidays[index].toString(),
                          style: fourhundredtweleve,
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Center(
              child: Container(
                height: 15.0.hp,
                width: 100.0.wp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffDCEAFF)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Note',
                        style: fourteensevenhundred,
                      ),
                      SizedBox(
                        height: 1.0.hp,
                      ),
                      Text(
                        '''Once you have confirmed a meeting time, it may not be possible to change or reschedule the meeting.''',
                        style: note,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5.0.hp,
            ),
            Center(
              child: ButtonIconButton(
                  text: 'Continue',
                  bordercolor: Colors.blue,
                  press: () {
                    Get.to(const UploadDocuments());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
