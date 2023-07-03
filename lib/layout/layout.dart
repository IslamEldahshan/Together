import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/conponents/colors.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/cubit/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        cubit.getHomeData();
        return Scaffold(
          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home',
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant_menu,
                  color: Colors.white,
                ),
                label: 'Request Status',
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.volunteer_activism,
                  color: Colors.white,
                ),
                label: 'Donate',
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.brunch_dining,
                  color: Colors.white,
                ),
                label: 'My Post',
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                label: 'Chat',
                backgroundColor: primaryColor,
              ),
            ],
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
          ),
        );
      },
    );
  }
}
