import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/services/UserService.dart';

import '../Models/User.dart';

class SecondScreen extends StatelessWidget {
  UserService userService = UserService();
  SecondScreen({super.key});
  List<String> names = [
    "Karim",
    "Ahmeed",
    "Mohamed",
    "ALI",
  ];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userService.GetUsers(),
        builder: (
          context,
          AsyncSnapshot<List<User>> snapshot,
        ) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(child: Text("No Connection"));
              break;
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.done:
              if (!snapshot.hasData) {
                return Center(
                  child: Text("Data Not Found"),
                );
              } else {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error"),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage(snapshot.data![index].image),
                                radius: 30,
                              ),
                              Text(
                                snapshot.data![index].name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                snapshot.data![index].job,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                snapshot.data![index].company,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              }
              break;
          }
        });
  }
}
