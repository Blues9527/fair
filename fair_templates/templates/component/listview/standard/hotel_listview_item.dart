// import 'rating_bar.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class HotelListViewItem extends StatefulWidget {
  dynamic fairProps;

  HotelListViewItem({Key? key, required this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HotelListViewItemState();
}

class _HotelListViewItemState extends State<HotelListViewItem> {
  @FairProps()
  var fairProps;

  String imagePath() {
    return fairProps['imagePath'];
  }

  String titleTxt() {
    return fairProps['titleTxt'];
  }

  String subTxt() {
    return fairProps['subTxt'];
  }

  double rating() {
    return fairProps['rating'];
  }

  String distance() {
    return fairProps['dist'] + ' km';
  }

  String reviews() {
    return fairProps['reviews'] + ' reviews';
  }

  String perNight() {
    return fairProps['perNight'] + '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 16),
      child: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 2,
                    child: Image.network(imagePath(), fit: BoxFit.cover),
                  ),
                  Container(
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 8, bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    titleTxt(),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        subTxt(),
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.location_on_rounded,
                                        size: 12,
                                        color: Color(0xFF54D3C2),
                                      ),
                                      Expanded(
                                        child: Text(
                                          distance(),
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Row(
                                      children: <Widget>[
//                                         RatingBar(
//                                           allowHalfRating: true,
//                                           starCount: 5,
//                                           rating: rating(),
//                                           size: 20,
//                                           color: Color(0xFF54D3C2),
//                                           borderColor: Color(0xFF54D3C2),
//                                         ),
                                        Text(
                                          // '80 reviews',
                                          reviews(),
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                // '180',
                                perNight(),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                '/per night',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF54D3C2),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
