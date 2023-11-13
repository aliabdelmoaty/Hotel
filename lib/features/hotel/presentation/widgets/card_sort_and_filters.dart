import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/assets.dart';
import 'package:test/features/hotel/presentation/widgets/bottom_sheet_filters.dart';
import 'package:test/features/hotel/presentation/widgets/list_view_sort.dart';

class CardSortAndFilters extends StatelessWidget {
  const CardSortAndFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) => const BottomSheetFilters(),
                  );
                },
                icon: Icon(
                  Icons.tune,
                  color: Colors.teal.shade400,
                )),
            Text(
              'Filters',
              style: TextStyle(fontSize: 15.sp, color: Colors.teal.shade400),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) {
                      return const ListViewSort();
                    },
                  );
                },
                icon: ImageIcon(
                  const AssetImage(Assets.imagesSortingOrder),
                  color: Colors.teal.shade400,
                )),
            Text(
              'Sort',
              style: TextStyle(
                  fontSize: 15.sp,
                  decoration: TextDecoration.underline,
                  color: Colors.teal.shade400),
            ),
          ],
        ),
      ),
    );
  }
}
