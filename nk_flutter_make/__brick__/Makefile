run:
	flutter run

run-release:
	flutter run --release

format:
	flutter format . --set-exit-if-changed

format-fix:
	flutter format .

lint:
	flutter analyze

tests:
	flutter test

packages-outdated:
	flutter pub outdated

packages-upgrade:
	flutter pub upgrade

clean:
	flutter clean
	flutter pub get
	make build-runner

build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs

appicon-generate:
	flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

splashscreen-generate:
	flutter pub run flutter_native_splash:create

build-ios:
	@echo "Build iOS"
	make clean
	rm -rf ios/dist
	# flutter build ipa --tree-shake-icons --export-options-plist=ios/ios-export-options.plist --analyze-size --suppress-analytics
	flutter build ipa --obfuscate --split-debug-info=./dist/debug/ --tree-shake-icons --export-options-plist=ios/ios-export-options.plist --suppress-analytics
	cp build/ios/ipa/app.ipa dist/app.ipa

build-android-apk:
	@echo "Build APK's"
	make clean
	# flutter build apk --target-platform=android-arm64 --analyze-size
	flutter build apk --target-platform=android-arm,android-arm64 --obfuscate --split-debug-info=./dist/debug/
	cp build/app/outputs/apk/release/app-release.apk dist/
	mv dist/app-release.apk dist/app.apk

build-android-appbundle:
	@echo "Build Store App Bundle"
	make clean
	# flutter build appbundle --analyze-size
	flutter build appbundle --obfuscate --split-debug-info=./dist/debug/
	cp build/app/outputs/bundle/release/app-release.aab dist/
	mv dist/app-release.aab dist/app.aab

release-ios:
	@echo "Release iOS"
	cd ios; bundle exec fastlane deploy

release-android:
	@echo "Release Android"
	cd android; bundle exec fastlane deploy