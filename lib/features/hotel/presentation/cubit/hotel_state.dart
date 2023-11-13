part of 'hotel_cubit.dart';

abstract class HotelState extends Equatable {
  const HotelState();

  @override
  List<Object> get props => [];
}

class HotelInitial extends HotelState {}

class HotelLoading extends HotelState {}

class HotelSuccess extends HotelState {
  final List<Hotel> hotels;

  const HotelSuccess(this.hotels);

  @override
  List<Object> get props => [hotels];
}

class HotelError extends HotelState {
  final String message;

  const HotelError(this.message);

  @override
  List<Object> get props => [message];
}
