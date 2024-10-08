import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ugd_4_hospital/View/home.dart';
import 'package:ugd_4_hospital/View/login.dart';
import 'package:ugd_4_hospital/View/profile_kelompok.dart';
import 'package:ugd_4_hospital/View/profile.dart';
import 'package:ugd_4_hospital/View/TextSpeech/textSpeechPage.dart';
import 'package:ugd_4_hospital/View/GeoLocation/geoLocationPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:ugd_4_hospital/View/Transaksi/transaksiView.dart';
import 'package:ugd_4_hospital/View/Transaksi/belanjaView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  void _navigateToProfile(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Profile(),
      ),
    );
  }

  void _navigateToProfileKelompok(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ProfileKelompok(),
      ),
    );
  }

  void _navigateToLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  // void _navigateToTTS(BuildContext context) {
  //   Navigator.of(context).push(
  //       MaterialPageRoute(builder: (context) => const TextToSpeechPage()));
  // }

  void _navigateToGeoLocation(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const GeoLocationPage()));
  }

  void _navigateToTransaksi(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProviderScope(child: BelanjaView())));
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      Device.orientation == Orientation.portrait
          ? Container(
              width: 100.w,
              height: 20.5.h,
            )
          : Container(
              width: 100.w,
              height: 12.5.h,
            );
      Device.screenType == ScreenType.tablet
          ? Container(
              width: 100.w,
              height: 20.5.h,
            )
          : Container(
              width: 100.w,
              height: 12.5.h,
            );
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Setting',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xff15C73C),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {
                    _navigateToProfile(context);
                  },
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.person_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.settings_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'General',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.shield_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'Privacy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    _navigateToProfileKelompok(context);
                  },
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.information_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'About Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                // const SizedBox(height: 20),
                // ListTile(
                //   onTap: () {
                //     _navigateToTTS(context);
                //   },
                //   leading: Container(
                //     padding: const EdgeInsets.all(10),
                //     decoration: BoxDecoration(
                //       color: const Color(0xff15C73C),
                //       shape: BoxShape.circle,
                //     ),
                //     child: const Icon(
                //       Ionicons.recording_outline,
                //       color: Colors.white,
                //       size: 30,
                //     ),
                //   ),
                //   title: const Text(
                //     'Text To Speech',
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontFamily: 'Poppins',
                //       fontSize: 16,
                //     ),
                //   ),
                //   trailing: const Icon(Ionicons.arrow_forward_outline),
                // ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    _navigateToGeoLocation(context);
                  },
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.location_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'Get Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    _navigateToTransaksi(context);
                  },
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff15C73C),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.cart_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'Transaksi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    _navigateToLogin(context);
                  },
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.log_out_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Ionicons.arrow_forward_outline),
                ),
                const SizedBox(height: 160),
              ],
            ),
          ),
        ),
      );
    });
  }
}
