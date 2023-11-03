import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_task/widgets/bottom_widget.dart';

import '../cubit/home_page/home_cubit.dart';
import '../cubit/home_page/home_state.dart';
import '../tabs_view/categories.dart';
import '../tabs_view/orders.dart';
import '../widgets/bottom_nav_screen_widget.dart';
import '../widgets/tabs_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PagesBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: appbar(),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 14,
                        child: Image.asset(
                          "assets/images/person.png",
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Hey, Ahmed",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Image.asset("assets/images/hand.png"),
                  ],
                ),
              ),
              const Text(
                "Multi-Services for Your Real Estate Needs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Text(
                  "Explore diverse real estate services for all your needs:\nproperty management, construction, insurance,and\nmore in one place.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  width: 335,
                  height: 152,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 245, 245, 1),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 25),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                        "Multi-Services for Your\n Real Estate Needs",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    bootomWidget(text: "Order")
                                  ]))),
                      Expanded(
                          flex: 3, child: Image.asset("assets/images/man2.png"))
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.white,
                          bottom: tabsController(),
                        ),
                        body: const TabBarView(children: [
                          Center(child: Categories()),
                          Center(child: Text("Services")),
                          Center(child: Orders()),
                        ]),
                      ))),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<PagesBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}


appbar() {
  return AppBar(
    title: const Text("Home"),
    centerTitle: true,
    leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/images/menu.png",
        )),
    elevation: .4,
  );
}
