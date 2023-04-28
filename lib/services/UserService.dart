import '../Models/User.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  FirebaseFirestore firebase = FirebaseFirestore.instance;

  Future<void> CreateUser({
    required User user,
  }) async {
    await firebase.collection("users").add(user.toJson());
  }

  Future<void> UpdateUser({required User user}) async {
    await firebase.collection("users").doc(user.id).update(user.toJson());
  }

  Future<void> DeleteUser({required String id}) async {
    await firebase.collection("users").doc(id).delete();
  }

  Future<List<User>> GetUsers() async {
    QuerySnapshot result = await firebase.collection("users").get();
    print("RESUUUULT: $result");
    List<User> users = result.docs
        .map((e) => User.fromJson(e.data() as Map<String, dynamic>))
        .toList();
    return users;
  }
}
