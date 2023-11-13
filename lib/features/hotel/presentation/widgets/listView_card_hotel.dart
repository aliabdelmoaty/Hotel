import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:test/features/hotel/presentation/widgets/card_item_hotel.dart';

class ListViewCardHotels extends StatelessWidget {
  final dynamic state;
  const ListViewCardHotels({
    super.key,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final hotels = state.hotels[index];

            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 1500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  child: CardItemHotel(
                    hotel: hotels,
                  ),
                ),
              ),
            );
          },
          itemCount: state.hotels.length,
        ),
      ),
    );
  }
}
