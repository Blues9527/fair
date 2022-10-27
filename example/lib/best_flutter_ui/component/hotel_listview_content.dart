import 'package:example/best_flutter_ui/app_theme.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

@FairPatch()
class HotelListViewContent extends StatefulWidget {
  dynamic fairProps;

  HotelListViewContent({Key? key, required this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HotelListViewContentState();
}

class _HotelListViewContentState extends State<HotelListViewContent> {
  @FairProps()
  var fairProps;

  @override
  void initState() {
    super.initState();
    fairProps = widget.fairProps;
  }

  String getImagePath() {
    return fairProps['imagePath'];
  }

  String getTitleTxt() {
    return fairProps['titleTxt'];
  }

  String getSubTxt() {
    return fairProps['subTxt'];
  }

  String getDistance() {
    return fairProps['distance'];
  }

  double getRating() {
    return fairProps['rating'];
  }

  String getReviews() {
    return fairProps['reviews'];
  }

  String getPerNight() {
    return fairProps['perNight'];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 16),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppTheme.greyWithOpacity,
                offset: const Offset(4, 4),
                blurRadius: 16,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2,
                      child: Image.asset(getImagePath(), fit: BoxFit.cover),
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
                                      getTitleTxt(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          getSubTxt(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.greyWithOpacity),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.mapMarkerAlt,
                                          size: 12,
                                          color: Color(0xFF54D3C2),
                                        ),
                                        Expanded(
                                          child: Text(
                                            getDistance(),
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    AppTheme.greyWithOpacity),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        children: <Widget>[
                                          SmoothStarRating(
                                            allowHalfRating: true,
                                            starCount: 5,
                                            rating: getRating(),
                                            size: 20,
                                            color: Color(0xFF54D3C2),
                                            borderColor: Color(0xFF54D3C2),
                                          ),
                                          Text(
                                            getReviews(),
                                            style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    AppTheme.greyWithOpacity),
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
                                  getPerNight(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  '/per night',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppTheme
                                          .greyWithOpacity),
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
                      // borderRadius: const BorderRadius.all(
                      //   Radius.circular(32.0),
                      // ),
                      //onTap: AppTheme.onTapEmpty,
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
      ),
    );
  }
}
