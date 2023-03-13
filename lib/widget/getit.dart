import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:flutter_application_1/services/local_storage_service.dart';
import 'package:flutter_application_1/services/server.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<Server>(() => Server());
  getIt.registerLazySingleton(() => LocalStorageService(sharedPreferences));
}