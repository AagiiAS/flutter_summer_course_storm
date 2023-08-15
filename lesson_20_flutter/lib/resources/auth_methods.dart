import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> singUpUser({
    required String email,
    required String password,
    required String username,
  }) async {
    String result = 'Some error occured';
    try {
      if (email.isNotEmpty || username.isNotEmpty || password.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        _firestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid':credential.user!.uid,
          'email': email,
          'password': password,
        });

        result = 'Success';
      }
    } catch (error) {
      result = error.toString();
    }

    return result;
  }
}
