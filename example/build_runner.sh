flutter clean

echo "----- flutter clean finish -----"

flutter pub get

echo "----- flutter pub get finish -----"

flutter pub run build_runner build --delete-conflicting-outputs

echo "----- flutter pub run build_runner build finish -----"

#mv build/fair/lib_best_flutter_ui_template_hotel_listview.fair.js assets/bundle/lib_best_flutter_ui_template_hotel_listview.fair.js
#mv build/fair/lib_best_flutter_ui_template_home_scrollview.fair.js assets/bundle/lib_best_flutter_ui_template_home_scrollview.fair.js
mv build/fair/lib_best_flutter_ui_template_gridview_template.fair.js assets/bundle/lib_best_flutter_ui_template_gridview_template.fair.js

echo "----- copy js file finish -----"

#mv build/fair/lib_best_flutter_ui_template_hotel_listview.fair.json assets/bundle/lib_best_flutter_ui_template_hotel_listview.fair.json
#mv build/fair/lib_best_flutter_ui_template_home_scrollview.fair.json assets/bundle/lib_best_flutter_ui_template_home_scrollview.fair.json
mv build/fair/lib_best_flutter_ui_template_gridview_template.fair.json assets/bundle/lib_best_flutter_ui_template_gridview_template.fair.json

echo "----- copy json file finish -----"