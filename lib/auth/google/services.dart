import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleService{
final FirebaseAuth _auth=FirebaseAuth.instance;
final GoogleSignIn _googleSignIn =GoogleSignIn();

// Google sign in function
Future<void> handleSignIn()async {
  try{
GoogleSignInAccount? googleuser = await _googleSignIn.signIn();
if(googleuser!=null){
  GoogleSignInAuthentication googleAuth=googleuser.authentication as GoogleSignInAuthentication;
  AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  await _auth.signInWithCredential(credential);
}
  }catch(e){
    print('Error: ');
  }
}

// Google sign out function

Future<void> handleSignOut()async {
  try {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }catch(e){
    print('sign out Error: ');
  }

}

}