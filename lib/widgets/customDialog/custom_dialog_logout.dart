import 'package:flutter/material.dart';

showLogoutConfirmationDialog(
    {required BuildContext context,
    required Function onPositiveTap,
    required Function onNegativeTap}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Logout BTMS'),
          content:
              const Text('Are you sure you want to logout from TAQA BTMS?'),
          actions: [
            TextButton(
              onPressed: () {
                onPositiveTap();
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                onNegativeTap();
              },
              child: const Text('No'),
            ),
          ],
        );
      });
}
