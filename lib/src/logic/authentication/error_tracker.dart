import 'package:firebase_auth/firebase_auth.dart';

mixin ErrorTracker {
  String firebaseErrorTracker(
    FirebaseAuthException e,
  ) {
    if (e.code == 'weak-password') {
      // progress?.dismiss();
      // showToast(
      //   "The password provided is too weak.",
      //   context: context,
      // );

      return 'The password provided is too weak';
    } else if (e.code == 'email-already-in-use') {
      // progress?.dismiss();

      // showToast(

      //   context: context,
      // );
      return "The account already exists for this email";
    } else {
      return '$e';
    }
  }

  String firebaseLoginErrorTracker(
    FirebaseAuthException e,
  ) {
    if (e.code == 'user-not-found') {
      return 'No user found for that email.';
    } else if (e.code == 'wrong-password') {
      return 'Wrong password provided for that user.';
    } else {
      return '$e';
    }
  }
}
