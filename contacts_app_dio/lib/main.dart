import 'package:contacts_app_dio/ui/cubit/detailpage_cubit.dart';
import 'package:contacts_app_dio/ui/cubit/homapage_cubit.dart';
import 'package:contacts_app_dio/ui/cubit/registrationpage_cubit.dart';
import 'package:contacts_app_dio/ui/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> RegistrationPageCubit()),
        BlocProvider(create: (context)=> DetailPageCubit()),
        BlocProvider(create: (context)=> HomePageCubit()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

