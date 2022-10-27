// Generated by Fair on 2022-10-27 18:03:55.516864.
import 'package:example/best_flutter_ui/hotel_booking/hotel_app_theme.dart';
import 'package:example/fair_widget/fairbinding/fair_binding_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart';
import 'package:example/best_flutter_ui/template/rating_bar.dart';
import 'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart';
import 'package:example/best_flutter_ui/component/composer_widget.dart';
import 'package:example/best_flutter_ui/app_theme.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:example/best_flutter_ui/app_theme.dart';
import 'package:example/best_flutter_ui/best_ui_page.dart';

import 'package:flutter/material.dart';
import 'package:fair/fair.dart';
import 'package:fair_version/fair_version.dart';

class AppGeneratedModule extends GeneratedModule {
  @override
  Map<String, dynamic> components() {
    return {
      'FairBindingWidget': (props) => FairBindingWidget(
            key: props['key'],
          ),
      'AppTheme': {
        'notWhite': AppTheme.notWhite,
        'nearlyWhite': AppTheme.nearlyWhite,
        'white': AppTheme.white,
        'nearlyBlack': AppTheme.nearlyBlack,
        'grey': AppTheme.grey,
        'dark_grey': AppTheme.dark_grey,
        'darkText': AppTheme.darkText,
        'darkerText': AppTheme.darkerText,
        'lightText': AppTheme.lightText,
        'deactivatedText': AppTheme.deactivatedText,
        'dismissibleBackground': AppTheme.dismissibleBackground,
        'chipBackground': AppTheme.chipBackground,
        'spacer': AppTheme.spacer,
        'fontName': AppTheme.fontName,
        'textTheme': AppTheme.textTheme,
        'display1': AppTheme.display1,
        'headline': AppTheme.headline,
        'title': AppTheme.title,
        'subtitle': AppTheme.subtitle,
        'body2': AppTheme.body2,
        'body1': AppTheme.body1,
        'caption': AppTheme.caption,
      },
      'RatingBar': (props) => RatingBar(
            starCount: props['starCount'] ?? 5,
            spacing: props['spacing']?.toDouble() ?? 0.0,
            rating: props['rating']?.toDouble() ?? 0.0,
            defaultIconData: props['defaultIconData'],
            onRatingChanged: props['onRatingChanged'],
            color: props['color'],
            borderColor: props['borderColor'],
            size: props['size']?.toDouble() ?? 25,
            filledIconData: props['filledIconData'],
            halfFilledIconData: props['halfFilledIconData'],
            allowHalfRating: props['allowHalfRating'] ?? true,
          ),
      'ComposerWidget': (props) => ComposerWidget(),
      'BestUiPage': (props) => BestUiPage(
            key: props['key'],
          ),
      'HotelAppTheme.buildLightTheme': (props) =>
          HotelAppTheme.buildLightTheme(),
      'SmoothStarRating': (props) => SmoothStarRating(
            starCount: props['starCount'] ?? 5,
            spacing: props['spacing']?.toDouble() ?? 0.0,
            rating: props['rating']?.toDouble() ?? 0.0,
            defaultIconData: props['defaultIconData'],
            onRatingChanged: props['onRatingChanged'],
            color: props['color'],
            borderColor: props['borderColor'],
            size: props['size']?.toDouble() ?? 25,
            filledIconData: props['filledIconData'],
            halfFilledIconData: props['halfFilledIconData'],
            allowHalfRating: props['allowHalfRating'] ?? true,
          ),
      'MasonryGridView': (props) => MasonryGridView(
            key: props['key'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'],
            gridDelegate: props['gridDelegate'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            cacheExtent: props['cacheExtent']?.toDouble(),
            children: as<Widget>(props['children']) ?? const <Widget>[],
            semanticChildCount: props['semanticChildCount'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
          ),
      'MasonryGridView.builder': (props) => MasonryGridView.builder(
            key: props['key'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'],
            gridDelegate: props['gridDelegate'],
            itemBuilder: props['itemBuilder'],
            itemCount: props['itemCount'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            cacheExtent: props['cacheExtent']?.toDouble(),
            semanticChildCount: props['semanticChildCount'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
          ),
      'MasonryGridView.custom': (props) => MasonryGridView.custom(
            key: props['key'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'],
            gridDelegate: props['gridDelegate'],
            childrenDelegate: props['childrenDelegate'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
            cacheExtent: props['cacheExtent']?.toDouble(),
            semanticChildCount: props['semanticChildCount'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
          ),
      'MasonryGridView.count': (props) => MasonryGridView.count(
            key: props['key'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'],
            crossAxisCount: props['crossAxisCount'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
            itemBuilder: props['itemBuilder'],
            itemCount: props['itemCount'],
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            cacheExtent: props['cacheExtent']?.toDouble(),
            semanticChildCount: props['semanticChildCount'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
          ),
      'MasonryGridView.extent': (props) => MasonryGridView.extent(
            key: props['key'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'],
            maxCrossAxisExtent: props['maxCrossAxisExtent']?.toDouble(),
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
            itemBuilder: props['itemBuilder'],
            itemCount: props['itemCount'],
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            cacheExtent: props['cacheExtent']?.toDouble(),
            semanticChildCount: props['semanticChildCount'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
          ),
      'StaggeredGrid.custom': (props) => StaggeredGrid.custom(
            key: props['key'],
            delegate: props['delegate'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0,
            axisDirection: props['axisDirection'],
            children: as<Widget>(props['children']) ?? const <Widget>[],
          ),
      'StaggeredGrid.count': (props) => StaggeredGrid.count(
            key: props['key'],
            crossAxisCount: props['crossAxisCount'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0,
            axisDirection: props['axisDirection'],
            children: as<Widget>(props['children']) ?? const <Widget>[],
          ),
      'StaggeredGrid.extent': (props) => StaggeredGrid.extent(
            key: props['key'],
            maxCrossAxisExtent: props['maxCrossAxisExtent']?.toDouble(),
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0,
            axisDirection: props['axisDirection'],
            children: as<Widget>(props['children']) ?? const <Widget>[],
          ),
    };
  }

  @override
  Map<String, bool> mapping() {
    return const {
      'FairBindingWidget': true,
      'AppTheme': false,
      'RatingBar': true,
      'ComposerWidget': true,
      'BestUiPage': true,
      'HotelAppTheme': false,
      'SmoothStarRating': true,
      'MasonryGridView': true,
      'StaggeredGrid': true,
    };
  }
}
