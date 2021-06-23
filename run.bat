rmdir /Q /S jpipeline-macos
rmdir /Q /S jpipeline-windows
rmdir /Q /S jpipeline

git clone git@github.com:iamhook/jpipeline.git
cd jpipeline
gradlew.bat jpipeline-javafx-client:jar
copy jpipeline-javafx-client\build\libs\jpipeline-javafx-client.jar ..
cd ../

java -jar packr-all-4.0.0.jar -- params-windows.json


