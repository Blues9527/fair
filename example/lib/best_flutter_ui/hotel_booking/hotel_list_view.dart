import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import 'model/hotel_list_data.dart';

class HotelListView extends StatelessWidget {
  const HotelListView(
      {Key? key,
      this.hotelData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback? callback;
  final HotelListData? hotelData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: FairWidget(
              // take care of bundle reuse, ListView item share the same bundle with different data
              // name should be unique
              name: 'card-${hotelData.hashCode}',
              path:
                  'assets/bundle/lib_best_flutter_ui_component_hotel_listview_content.fair.json',
              data: {
                'fairProps': jsonEncode({
                  'imagePath': hotelData?.imagePath,
                  'titleTxt': hotelData?.titleTxt,
                  'subTxt': hotelData?.subTxt,
                  'rating': hotelData?.rating ?? 4.4,
                  'perNight': '${hotelData?.perNight ?? 180}',
                  'reviews': '${hotelData?.reviews ?? 80} Reviews',
                  'distance': '${hotelData?.dist ?? 2.0} km to city'
                })
              },
            ),
          ),
        );
      },
    );
  }
}
