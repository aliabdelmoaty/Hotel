import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/assets.dart';

class RowStars extends StatelessWidget {
  const RowStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesStar1,
            height: 30.h,
            width: 50.w,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesStar2,
            height: 30.h,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesStar3,
            height: 30.h,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesStar4,
            height: 30.h,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesStar5,
            height: 30.h,
          ),
        ),
      ],
    );
  }
}
