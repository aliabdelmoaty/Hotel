import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewSort extends StatefulWidget {
  const ListViewSort({
    Key? key,
  }) : super(key: key);

  @override
  State<ListViewSort> createState() => _ListViewSortState();
}

String selected = 'Our recommendations';

class _ListViewSortState extends State<ListViewSort> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 490.5.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Row(
                children: [
                  const Spacer(),
                  Text(
                    'Sorting By',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close_rounded)),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    title: const Text('Our recommendations'),
                    trailing: selected == 'Our recommendations'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Our recommendations';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Rating & Recommended'),
                    trailing: selected == 'Rating & Recommended'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Rating & Recommended';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Price & Recommended'),
                    trailing: selected == 'Price & Recommended'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Price & Recommended';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Distance & Recommended'),
                    trailing: selected == 'Distance & Recommended'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Distance & Recommended';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Rating only'),
                    trailing: selected == 'Rating only'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Rating only';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Price only'),
                    trailing: selected == 'Price only'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Price only';
                      });
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Distance only'),
                    trailing: selected == 'Distance only'
                        ? Icon(
                            Icons.check,
                            color: Colors.teal.shade400,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        selected = 'Distance only';
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
