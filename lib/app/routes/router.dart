import 'package:get/get.dart';
import 'package:getx_flutter/app/ui/home/home_binding.dart';
import 'package:getx_flutter/app/ui/home/home_view.dart';

final getPages = [
  GetPage(name:'/home' , page: ()=>  const HomeView(), binding: HomeBinding() )
];