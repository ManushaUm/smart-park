import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  signInWithGoogle() async {
    //google sign in
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //obtain details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    //create a new credentials
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    //sign in with credentials
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
  //sign out
}
