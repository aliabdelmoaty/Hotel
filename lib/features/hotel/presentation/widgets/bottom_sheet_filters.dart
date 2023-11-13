import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/features/hotel/presentation/widgets/container_rating.dart';
import 'package:test/features/hotel/presentation/widgets/row_stars.dart';
import 'package:test/features/hotel/presentation/widgets/slider_price.dart';

class BottomSheetFilters extends StatelessWidget {
  const BottomSheetFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 447.5.h,
      decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20).r,
              topRight: const Radius.circular(20).r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Filters',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close_rounded))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'PRICE PER NIGHT',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                      border: const Border.fromBorderSide(
                          BorderSide(color: Colors.black12)),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Text(
                    '${SliderPrice.value} \$',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const SliderPrice(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  Text(
                    '\$20+',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  const Spacer(),
                  Text(
                    '\$550+',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'RATING',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                const ContainerRating(
                  color: Colors.red,
                  text: '0+',
                ),
                const Spacer(),
                const ContainerRating(
                  color: Colors.orange,
                  text: '7+',
                ),
                const Spacer(),
                const ContainerRating(
                  color: Colors.green,
                  text: '7.5+',
                ),
                const Spacer(),
                ContainerRating(
                  color: Colors.green.shade600,
                  text: '8+',
                ),
                const Spacer(),
                ContainerRating(
                  color: Colors.green.shade800,
                  text: '8.5+',
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'HOTEL CLASS',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            const RowStars(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'DISTANCE FROM',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Row(
              children: [
                Text(
                  'Location',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  'City center',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
            const Divider(),
            const CardShowResults()
          ],
        ),
      ),
    );
  }
}

class CardShowResults extends StatelessWidget {
  const CardShowResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 3,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Colors.blue.shade400,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Show results',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
