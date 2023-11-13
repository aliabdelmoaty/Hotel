import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:test/features/hotel/presentation/widgets/card_sort_and_filters.dart';
import 'package:test/features/hotel/presentation/widgets/listView_card_hotel.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hotelCubit = HotelCubit.get(context);
    hotelCubit.getHotelDetails();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CardSortAndFilters(),
              const SizedBox(
                height: 10,
              ),
              BlocConsumer<HotelCubit, HotelState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is HotelSuccess) {
                    return ListViewCardHotels(
                      state: state,
                    );
                  } else if (state is HotelLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is HotelError) {
                    return ScaffoldMessenger(
                        child:
                            SnackBar(content: Text('Error: ${state.message}')));
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
