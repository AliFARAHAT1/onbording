import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/Models/PageModel.dart';
import 'package:todoapp/Screens/HomeScreem.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  List<PageModel> models = [
    PageModel(
      image: "https://cdn-icons-png.flaticon.com/512/1835/1835973.png",
      title: "Track Your Crypto",
      body:
          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
    ),
    PageModel(
      image:
          "https://www.iconpacks.net/icons/2/free-bitcoin-icon-2207-thumb.png",
      title: "Explore Best Coins",
      body:
          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
    ),
    PageModel(
      image:
          "https://www.iconpacks.net/icons/2/free-cryptocurrency-coin-icon-2457-thumb.png",
      title: "Fast Optimization",
      body:
          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
            onPageChanged: (newIndex) {
              setState(() {
                index = newIndex;
                print(index);
              });
            },
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, pageIndex) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(models[pageIndex].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        models[pageIndex].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          models[pageIndex].body,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          printDots(),
          Positioned(
              bottom: 90,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(50)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    index == models.length - 1 ? "Continue Now" : "Skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget printDots() {
    List<Widget> dots = [];
    for (var i = 0; i < 3; i++) {
      dots.add(
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: index == i ? 40 : 15,
            height: 15,
            decoration: BoxDecoration(
              color: index == i ? Colors.white : Colors.grey,
              borderRadius: BorderRadius.circular(200),
            ),
          ),
        ),
      );
    }

    return Positioned(
      top: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: dots,
      ),
    );
  }
}
