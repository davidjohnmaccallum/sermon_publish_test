# Sermon Publisher Tests

A [Robot Framework](https://robotframework.org/) integration test for the Sermon Publisher. The test runs via Selenium on desktop browsers and via Appium on mobile browsers.

## Getting Started

```sh
# Install Python. (MacOS instructions)
#
brew install pyenv
pyenv install 3.7.2
pyenv global 3.7.2

# Install the Robot Framework
#
pip install robotframework
pip install robotframework-seleniumlibrary
pip install selenium
robot --version # Test installation

# Install the Selenium drivers
#
open https://chromedriver.chromium.org/ # Download the Chrome driver
mv ~/Downloads/chromedriver /usr/local/bin/ # Move into path
xattr -r -d com.apple.quarantine /usr/local/bin/chromedriver # Catalina issue workaround

open https://github.com/mozilla/geckodriver/releases # Download the Firefox driver
mv ~/Downloads/geckodriver /usr/local/bin/ # Move into path
xattr -r -d com.apple.quarantine /usr/local/bin/geckodriver # Catalina issue workaround

# Safari driver is built in. Go to Develop > Allow Remote Automation to enable

# Install Appium for testing on mobile
#
npm install -g appium
npm install -g appium-doctor
appium-doctor
# Follow the doctors advice
# Start appium
appium --allow-insecure chromedriver_autodownload

# Running the tests
#
robot -d Results Tests/SermonPublisher.robot
```
