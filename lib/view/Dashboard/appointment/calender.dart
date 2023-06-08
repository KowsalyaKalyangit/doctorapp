// import 'package:doctorapp/view/Dashboard/appointment/calender_packages.dart';

// import '../../allpackages.dart';

// class DatePicker extends StatefulWidget {
//   const DatePicker({Key? key}) : super(key: key);


//   @override
//   State<DatePicker> createState() => _DatePickerState();
// }


// class _DatePickerState extends State<DatePicker> {
//   late DateTime _selectedDate;
//   static const orange = Color(0xFFFE9A75);
//   static const dark = Color(0xFF333A47);
//   static const double leftPadding = 20;


//   final _defaultTimeRange = TimeRangeResult(
//     const TimeOfDay(hour: 14, minute: 00),
//     const TimeOfDay(hour: 15, minute: 00),
//   );
//   TimeRangeResult? _timeRange;


//   @override
//   void initState() {
//     super.initState();
//     _timeRange = _defaultTimeRange;
//     _resetSelectedDate();
//   }


//   void _resetSelectedDate() {
//     _selectedDate = DateTime.now().add(const Duration(days: 2));
//   }


//   var dropdownValue = '';
//   var selectedtyped = ['30 minutes', '1 hr 30 mins', '2 hrs'];
//   var type;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: bgcolor,
//         appBar: AppBar(
//           leading: Icon(Icons.arrow_back),
//           title: Text('Book Appointment'),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Icon(Icons.search),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Icon(Icons.notifications),
//             )
//           ],
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 CalendarTimeline(
//                   showYears: true,
//                   initialDate: _selectedDate,
//                   firstDate: DateTime.now(),
//                   lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
//                   onDateSelected: (date) =>
//                       setState(() => _selectedDate = date),
//                   leftMargin: 20,
//                   monthColor: Colors.white70,
//                   dayColor: Colors.teal[200],
//                   dayNameColor: const Color(0xFF333A47),
//                   activeDayColor: Colors.white,
//                   activeBackgroundDayColor: Colors.purple[300],
//                   dotsColor: const Color(0xFF333A47),
//                   selectableDayPredicate: (date) => date.day != 23,
//                   locale: 'en',
//                 ),
//                 SizedBox(height: 3.00.hp),


//                 // Center(
//                 //   child: Text(
//                 //     'Selected date is $_selectedDate',
//                 //     style: const TextStyle(color: Colors.white),
//                 //   ),
//                 // )
//                 Text('Consultation Duration'),
//                 SizedBox(
//                   height: 3.0.hp,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                         height: 6.00.hp,
//                         width: 90.00.wp,
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         decoration: BoxDecoration(
//                           color: screenbackground,
//                           borderRadius: BorderRadius.circular(5.0),
//                           border: Border.all(
//                             color: const Color(0xFFECE9E9),
//                             width: MediaQuery.of(context).size.height * 0.001,
//                           ),
//                         ),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton<String>(
//                             style: GoogleFonts.jost(
//                                 textStyle: TextStyle(
//                                     fontSize: 10.00.sp,
//                                     color: forminputcolor,
//                                     fontWeight: FontWeight.w500)),
//                             hint: Text('Selected type',
//                                 style: GoogleFonts.jost(
//                                     textStyle: TextStyle(
//                                         fontSize: 10.00.sp,
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w500))),
//                             // onChanged: (String? newValue) async {
//                             //   setState(() {
//                             //     selectstate = newValue.toString();
//                             //   });
//                             // },
//                             icon: Icon(Icons.arrow_downward),


//                             items: selectedtyped
//                                 .map<DropdownMenuItem<String>>((items) {
//                               return DropdownMenuItem<String>(
//                                 value: items,
//                                 child: Container(
//                                     margin: const EdgeInsets.only(
//                                         left: 0, right: 4),
//                                     child: Text(items.toString(),
//                                         style: GoogleFonts.jost(
//                                             textStyle: TextStyle(
//                                                 fontSize: 10.00.sp,
//                                                 color: forminputcolor,
//                                                 fontWeight: FontWeight.w500)))),
//                               );
//                             }).toList(),
//                             value: type,
//                             onChanged: (value) {
//                               setState(() {
//                                 type = value!;
//                               });
//                             },
//                           ),
//                         )),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 3.0.hp,
//                 ),
//                 TimeRange(
//                   fromTitle: const Text(
//                     'Choose Time Slot',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: dark,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   titlePadding: leftPadding,
//                   textStyle: const TextStyle(
//                     fontWeight: FontWeight.normal,
//                     color: dark,
//                   ),
//                   activeTextStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                   borderColor: dark,
//                   activeBorderColor: Colors.purple,
//                   backgroundColor: Colors.white,
//                   activeBackgroundColor: Colors.purple,
//                   firstTime: const TimeOfDay(hour: 8, minute: 00),
//                   lastTime: const TimeOfDay(hour: 20, minute: 00),
//                   initialRange: _timeRange,
//                   timeStep: 30,
//                   timeBlock: 30,
//                   onRangeCompleted: (range) =>
//                       setState(() => _timeRange = range),
//                   onFirstTimeSelected: (startHour) {},
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
