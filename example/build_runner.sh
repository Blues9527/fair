flutter clean

echo "----- flutter clean finish -----"

flutter pub get

echo "----- flutter pub get finish -----"

flutter pub run build_runner build --delete-conflicting-outputs

echo "----- flutter pub run build_runner build finish -----"

mv build/fair/lib_best_flutter_ui_template_sugar_test_case.fair.js assets/bundle/lib_best_flutter_ui_template_sugar_test_case.fair.js

echo "----- copy js file finish -----"

mv build/fair/lib_best_flutter_ui_template_sugar_test_case.fair.json assets/bundle/lib_best_flutter_ui_template_sugar_test_case.fair.json

echo "----- copy json file finish -----"