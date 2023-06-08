import 'package:doctorapp/view/Dashboard/profile/profile.dart';
import 'package:doctorapp/view/Dashboard/time_booking/time_completedappointment.dart';

import '../allpackages.dart';

import 'time_booking/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _selectedTab = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomePage(),
    },
    {
      'page': const TimingCompletedAppointment(),
    },
    {
      'page': const Appointment(),
    },
    {
      'page': const Profile(),
    },
    {
      'page': const Dashboard(),
    },
  ];
  void onTabTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
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
        Positioned(child: Center(child: _pages[_selectedTab]['page']))
      ]),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 80,
          child: Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,

                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.amberAccent,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.grey))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: _selectedTab,
              fixedColor: Colors.amberAccent,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  activeIcon: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer),
                    ],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  activeIcon: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer),
                    ],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  activeIcon: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer),
                    ],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  activeIcon: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer),
                    ],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  activeIcon: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // bottomNavigationBar: Padding(
  //   padding: const EdgeInsets.only(
  //     left: 3.0,
  //     right: 3,
  //   ),
  //   child: BottomNavyBar(
  //     containerHeight: 50,
  //     selectedIndex: _currentIndex,
  //     showElevation: false,
  //     itemCornerRadius: 24,
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     curve: Curves.easeIn,
  //     onItemSelected: (index) => setState(() => _currentIndex = index),
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //         icon: Image.asset(
  //           'assets/images/home.png',
  //           color: _pages[_currentIndex] == 0
  //               ? screenbackground
  //               : Colors.grey,
  //         ),
  //         title: const Padding(
  //           padding: EdgeInsets.only(left: 1.0),
  //           child: Text('Home'),
  //         ),
  //         activeColor: appcolor,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Image.asset(
  //           'assets/images/calendar.png',
  //           color: _pages[_currentIndex] == 1
  //               ? screenbackground
  //               : Colors.grey,
  //         ),
  //         inactiveColor: Colors.grey,
  //         title: const Padding(
  //           padding: EdgeInsets.only(left: 1.0),
  //           child: Text('Calendar'),
  //         ),
  //         activeColor: appcolor,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Image.asset(
  //           'assets/images/blog.png',
  //           color: _pages[_currentIndex] == 2
  //               ? screenbackground
  //               : Colors.grey,
  //         ),
  //         title: const Padding(
  //           padding: EdgeInsets.only(left: 0.0),
  //           child: FittedBox(
  //             fit: BoxFit.fitWidth,
  //             child: Text(
  //               'Blog',
  //               // style: GoogleFonts.poppins(
  //               //     textStyle: TextStyle(
  //               //         letterSpacing: 1,
  //               //         fontSize: 9.00.sp,
  //               //         color: Colors.white,
  //               //         fontWeight: FontWeight.w700)),
  //             ),
  //           ),
  //         ),
  //         activeColor: appcolor,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Image.asset(
  //           'assets/images/user.png',
  //           color: _pages[_currentIndex] == 3
  //               ? screenbackground
  //               : Colors.grey,
  //         ),
  //         title: const Padding(
  //           padding: EdgeInsets.only(left: 1.0),
  //           child: Text('Profile'),
  //         ),
  //         activeColor: appcolor,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Image.asset(
  //           'assets/images/dash.png',
  //           color: _pages[_currentIndex] == 4
  //               ? screenbackground
  //               : Colors.grey,
  //         ),
  //         title: const Padding(
  //           padding: EdgeInsets.only(left: 1.0),
  //           child: Text('Dashboard'),
  //         ),
  //         activeColor: appcolor,
  //         textAlign: TextAlign.center,
  //       ),
  //     ],
  //   ),
}

class TimeSlot extends StatefulWidget {
  const TimeSlot({super.key});

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
 


//homescreen
