import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FirstFirebaseUser {
  FirstFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FirstFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FirstFirebaseUser> firstFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FirstFirebaseUser>(
      (user) {
        currentUser = FirstFirebaseUser(user);
        return currentUser!;
      },
    );
