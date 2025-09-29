import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ushopia/utilities/formatters/formatter.dart';

class UserModel {
  ///Model class representing user data
  final String id, username, email;
  String firstName, lastName, phoneNumber, profilePicture;

  ///Constructor for UserModel
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  ///Helper function to get the full name
  String get fullName => '$firstName $lastName';

  ///Helper function to format phone number
  String get formattedPhoneNumber => AFormatter.formatPhoneNumber(phoneNumber);

  ///Static function to split full name into first and last name
  static List<String> nameParts(String fullName) => fullName.split(" ");

  ///Static function to generate a username from full name
  static String generateUsername(String fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUsername =
        '$firstName$lastName'; //This is to convert first and last name
    String usernameWithPrefix =
        'cwt_$camelCaseUsername'; //This add "cwt_" prefix
    return usernameWithPrefix;
  }

  ///Static function to create an empty user model
  static UserModel empty() => UserModel(
    id: '',
    firstName: '',
    lastName: '',
    username: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
  );

  ///Convert model to JSON structure for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  ///Factory method to create a UserModel from a firebase document snapshot
  factory UserModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document
  ) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      throw Exception("Document data is null.");
    }
  }
}
