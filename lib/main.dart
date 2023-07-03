import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/bloc_observer.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/foundation_profile.dart';
import 'package:graduation/guest.dart';
import 'package:graduation/home.dart';
import 'package:graduation/layout/layout.dart';
import 'package:graduation/network/local/cache_helper.dart';
import 'package:graduation/network/remote/dio_helper.dart';
import 'package:graduation/request_status.dart';
import 'package:graduation/splashScreen.dart';
import 'package:graduation/start.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  
  Widget widget;
  token = CacheHelper.getData(key: 'token');
  type = CacheHelper.getData(key: 'type');
  BlocOverrides.runZoned(
        () {
          print(' Token =====> $token');
        if (token != null) {
          widget = const splash_Screen();
        } else {
          widget = splash_Screen();
        }
      runApp(MyApp(
        startWidget: widget,
      ),);
    },
    blocObserver: MyBlocObserver(),
  );

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.startWidget}) : super(key: key);
  final startWidget;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: startWidget,
      ),
    );
  }
}
