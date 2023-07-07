
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/adminProfile.dart';
import 'package:graduation/conponents/components.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/states.dart';
import 'package:graduation/foundation_profile.dart';
import 'package:graduation/guest_profile.dart';
import 'package:graduation/home.dart';
import 'package:graduation/logIn.dart';
import 'package:graduation/models/admin_profile_model.dart';
import 'package:graduation/models/get_requests_model.dart';
import 'package:graduation/models/home_model.dart';
import 'package:graduation/models/login_model.dart';
import 'package:graduation/models/user_profile_model.dart';
import 'package:graduation/models/verified_user_model.dart';
import 'package:graduation/network/endpoints.dart';
import 'package:graduation/network/local/cache_helper.dart';
import 'package:graduation/network/remote/dio_helper.dart';
import 'package:graduation/request_status.dart';
import 'package:graduation/view/donate.dart';
import 'package:graduation/weight/post.dart';


class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  bool isFavorite = true;
  IconData favorite = Icons.favorite_rounded;
  void changeFavoriteIcon(){
    emit(AppChangeFavoriteIconState());
    isFavorite = !isFavorite;
    if(isFavorite){
      favorite = Icons.favorite_rounded;
      print('true');
    }
    else{
      favorite = Icons.favorite_border_rounded;
      print('false');
    }
  }


  Widget? profileScreen;
  void selectProfile({
    required String type,
  }){
    if(type == 'Admin') {
      profileScreen = admin_profile();
    }
    else if(type == 'User'){
      profileScreen = guest_profile();
    }
    else{
      profileScreen = foundation_profile();
    }
  }


  int currentIndex = 0;
  List<Widget> bottomScreens = [
    HomeScreen(),
    RequestStatusScreen(),
    Donate(),
    Post(),
    admin_profile(),
  ];


  void changeBottom(int index){
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  void signUp({
    required BuildContext context,
    required String name,
    required String email,
    required String phone,
    required String password,
    required String password_confirmation,
    required String location,
    required String id,
    required String user_type,
}) async{
    emit(RegisterLoadingState());
    await DioHelper.postData(
      path: register,
      data: {
        'name' : name,
        'email' : email,
        'phone' : phone,
        'password' : password,
        'password_confirmation' : password_confirmation,
        'location' : location,
        'nat_id' : id,
        'user_type' : user_type,
      },
    ).then((value) {

      print('------------------ Register Operation Has Done -------------------');
      // debugPrint(value.data.toString());
      print(value.data);
      print(value.data.toString());
      emit(RegisterSuccessState());
      navigateAndFinish(context, logIn());
    }).catchError((error){
      emit(RegisterErrorState());
      print('Error When User Register ====> ${error.toString()}');
    });
  }

  LoginModel? loginModel;
  void signIn({
    required String email,
    required String password,
    required String type,
}) async{
    emit(LoginLoadingState());
    await DioHelper.postData(
      path: login,
      data: {
        'email' : email,
        'password' : password,
        'user_type' : type
      },
    ).then((value) {
      print('------------------ Login Operation Has Done -------------------');
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel!.statusCode);
      print(loginModel!.token);
      emit(LoginSuccessState());
    }).catchError((error){
      emit(LoginErrorState());
      print('Error When User Login ====> ${error.toString()}');
    });
  }


  void signOut(context){
    CacheHelper.removeDate(key: 'token').then((value) {
      if (value) {
        navigateAndFinish(context, logIn());
      }
    });
  }
  
  HomeModel? homeModel;
  void getHomeData() async{
    if(token != null){
      // emit(GetHomeLoadingState());
      await DioHelper.getData(
        path: home,
        token: token,
      ).then((value){
        print('--------------------------- Get Home Data Has Done ----------------------');
        homeModel = HomeModel.fromJson(value.data);
        print('Home Data =========> ${homeModel!.data![0].productImages}');
        if(type == 'Admin'){
          getAdminProfile(token: 'Bearer $token');
        }
        else{
          getUserProfile(token: 'Bearer $token');
          getRequestData(token: 'Bearer $token');
        }
        // emit(GetHomeSuccessState());
      }).catchError((error){
        // emit(GetHomeErrorState());
        print('Error When Get Home Data =====> ${error.toString()}');
      });
    }
  }



  GetRequestsModel? getRequestsModel;
  void getRequestData({
    required String token,
}) async{
    if(token != null){
      // emit(GetRequestsLoadingState());
      await DioHelper.getData(
        path: requests,
        token: token,
      ).then((value){
        print('--------------------------- Get Requests Data Has Done ----------------------');
        print('Request Data =========> ${value.data}');
        getRequestsModel = GetRequestsModel.fromJson(value.data);
        // emit(GetRequestsSuccessState());
      }).catchError((error){
        // emit(GetRequestsErrorState());
        print('Error When Get Requests Data =====> ${error.toString()}');
      });
    }

  }



  UserProfileModel? userProfileModel;
  void getUserProfile({
    required String token,
}) async{
    if(token != null){
      // emit(GetRequestsLoadingState());
      await DioHelper.getData(
        path: userProfile,
        token: token,
      ).then((value){
        print('--------------------------- Get User Profile Data Has Done ----------------------');
        print('User Profile Data =========> ${value.data}');
        userProfileModel = UserProfileModel.fromJson(value.data);
        print('User Profile Data =====> ${userProfileModel!.data!.name}');
        // emit(GetRequestsSuccessState());
      }).catchError((error){
        // emit(GetRequestsErrorState());
        print('Error When Get User Profile Data =====> ${error.toString()}');
      });
    }

  }



  AdminProfileModel? adminProfileModel;
  void getAdminProfile({
    required String token,
}) async{
    if(token != null){
      // emit(GetAdminProfileLoadingState());
      print('Type ============> $type');
      await DioHelper.getData(
        path: adminProfile,
        token: token,
      ).then((value){
        print('--------------------------- Get Admin Profile Done ----------------------');
        adminProfileModel = AdminProfileModel.fromJson(value.data);
        print(value.data.runtimeType);
        print(value.data);
        print('============> ${adminProfileModel!.data!.name}');
        // emit(GetAdminProfileSuccessState());
      }).catchError((error){
        // emit(GetAdminProfileErrorState());
        print('Error When Get Admin Profile =====> ${error.toString()}');
      });
    }
  }


  VerifiedUserModel? verifiedUserModel;
  void verifiedUser({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required String phone,
    required String location,
    required String nat_id,
    required String user_type,
    required String token,
}) async{
    await DioHelper.postData(
      path: user_verified,
      data: {
        'name' : name,
        'email' : email,
        'password' : password,
        'password_confirmation' : confirmPassword,
        'phone' : phone,
        'location' : location,
        'nat_id' : nat_id,
        'user_type' : user_type,
      },
      token: token,
    ).then((value){
      // print('Verified User Done ======> ${value.data}');
      verifiedUserModel = VerifiedUserModel.fromJson(value.data);
      print('Verified User Done ======> ${verifiedUserModel!.status}');

    }).catchError((error){
      print('Error When Verified User =====> ${error.toString()}');
    });
  }


}