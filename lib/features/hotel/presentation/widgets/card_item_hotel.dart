import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/features/hotel/domain/entities/hotel.dart';

class CardItemHotel extends StatelessWidget {
  final Hotel hotel; // Add this property to receive the hotel data

  const CardItemHotel({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0.r),
      ),
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  hotel.image,
                  height: 130.h,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(365),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          
                        },
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: [
                for (int i = 0; i < hotel.starts; i++)
                  const Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.black54,
                  ),
                SizedBox(width: 3.0.w),
                Text(
                  'Hotel',
                  style: TextStyle(fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Text(
              hotel.name,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0.r),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Text(hotel.reviewScore.toString()),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                Text(
                  hotel.review,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                const Icon(Icons.location_on),
                Text(
                  hotel.address,
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Container(
              padding: EdgeInsets.all(8.0.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade100,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.r),
                      ),
                    ),
                    child: const Text('Our Lowest price'),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${hotel.price}',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.green.shade400,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text('Renaissance'),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'View Deal',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'More price',
                  style: TextStyle(
                    color: Colors.black45,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

