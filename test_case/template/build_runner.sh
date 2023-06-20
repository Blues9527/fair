flutter clean

echo "flutter clean finish"

flutter pub get

echo "flutter pub get finish"

flutter pub run build_runner build --delete-conflicting-outputs

echo "flutter pub run build_runner build finish"