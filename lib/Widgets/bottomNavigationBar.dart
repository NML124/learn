import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constants/colors.dart';

Widget bottomNavigation(_currentIndex, setCurrentIndex){
  return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: const BoxDecoration(
        color: ColorsConstant.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: ColorsConstant.lightBlue,
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsConstant.blackBlue,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.message,
                ),
                label: 'Message'
            ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.user,
                ),
                label: 'Profile'
            ),
          ],
        ),
      )
  );
}