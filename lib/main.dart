import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/utils/bloc_observer.dart';
import 'package:test/features/hotel/data/datasources/remote/hotel_remote_data_source.dart';
import 'package:test/features/hotel/data/repositories/hotel_repository.dart';
import 'package:test/features/hotel/domain/useCases/get_hotel_details.dart';
import 'package:test/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:test/features/hotel/presentation/pages/hotel_screen.dart';

void main() async{
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(
            create: (context) => HotelCubit(
              GetHotelDetailsUseCase(
                baseHotelDetailsRepo: MovieRepository(
                  MovieRemoteDataSource(),
                ),
              ),
            ),
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HotelsGo',
              home: HotelScreen(),
            ),
          );
        });
  }
}
