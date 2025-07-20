import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/model/user_create_req.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AuthFirebaseService {
  Future<Either<String, String>> signUp({required UserCreateRequestModel data});
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either<String, String>> signUp({required UserCreateRequestModel data}) async {
    try {
      var returnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: data.email,
            password: data.password,
          );

      await FirebaseFirestore.instance
          .collection("Users")
          .doc(returnedData.user!.uid)
          .set({
            "First Name": data.firstName,
            "Last Name": data.lastName,
            "Email": data.email,
          });
      
      return const Right("Sign up was successful");
      
    } on FirebaseAuthException catch (e) {
      String message;
      
      switch (e.code) {
        case "weak-password":
          message = "The password provided is too weak";
          break;
        case "email-already-in-use":
          message = "The account already exists for that email";
          break;
        case "invalid-email":
          message = "The email address is not valid";
          break;
        case "operation-not-allowed":
          message = "Email/password accounts are not enabled";
          break;
        case "network-request-failed":
          message = "Network error occurred. Please check your connection";
          break;
        case "too-many-requests":
          message = "Too many requests. Please try again later";
          break;
        default:
          message = "Authentication failed: ${e.message ?? 'Unknown error'}";
      }
      
      return Left(message);
      
    } on FirebaseException catch (e) {
      // Handle Firestore errors
      String message;
      
      switch (e.code) {
        case "unavailable":
          message = "Service is currently unavailable. Please try again later";
          break;
        case "deadline-exceeded":
          message = "Request timeout. Please check your connection";
          break;
        case "permission-denied":
          message = "Permission denied. Unable to save user data";
          break;
        default:
          message = "Database error: ${e.message ?? 'Unknown error'}";
      }
      
      return Left(message);
      
    } catch (e) {
      // Handle any other unexpected errors
      return Left("An unexpected error occurred: ${e.toString()}");
    }
  }
}