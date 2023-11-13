import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/features/hotel/domain/entities/hotel.dart';
import 'package:test/features/hotel/domain/useCases/get_hotel_details.dart';

part 'hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  final GetHotelDetailsUseCase getHotelDetailsUseCase;

  HotelCubit(this.getHotelDetailsUseCase) : super(HotelInitial());

  static HotelCubit get(context) => BlocProvider.of(context);

  Future<void> getHotelDetails() async {
    try {
      emit(HotelLoading());
      final result = await getHotelDetailsUseCase.execute();
      emit(HotelSuccess(result));
    } catch (e, stackTrace) {
      print('Error: $e');
      print('Stack Trace: $stackTrace');
      emit(const HotelError('Failed to load hotels'));
    }
  }

}
