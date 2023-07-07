import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/conponents/colors.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/cubit/states.dart';
import 'package:hexcolor/hexcolor.dart';

class RequestStatusScreen extends StatelessWidget {
  RequestStatusScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            elevation: 0,
            title: const Text(
              'My Request Status',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Colors.white,
                height: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '30 s ago',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Text(
                      '1/11/2022 | 5:14 AM',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Your Requested!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                    height: 150.0,
                    width: double.infinity,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(12.0,),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            '${cubit.getRequestsModel!.data![index].image}',
                            width: 130.0,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal:7,
                            vertical: 7,
                          ),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${cubit.getRequestsModel!.data![index].productName}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                               const  SizedBox(
                                  height: 15.0,
                                ),
                                // Favorite Icon
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          child: Icon(
                                            cubit.favorite,
                                            size: 20.0,
                                            color: Colors.red,
                                          ),
                                          onTap: () {
                                            cubit.changeFavoriteIcon();
                                          },
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          '9 likes',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      '${cubit.getRequestsModel!.data![index].productDeliveryMethod}',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: textColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: primaryColor,
                                    ),
                                    const Text(
                                      '18 km away',
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    const CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 17.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    const Text(
                                      'for 3',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 15,),
                  itemCount: cubit.getRequestsModel!.data!.length,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(10.0,),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Status:',
                        style: TextStyle(
                          color: HexColor('#063F4D'),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
