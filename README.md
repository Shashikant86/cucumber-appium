#Usage

You need to have all setup mentioned in the post http://shashikantjagtap.net/ios-automated-testing-in-the-bdd-with-appium-cucumber-on-mac-osx/

      $ git clone https://github.com/Shashikant86/cucumber-appium
      $ cd cucumber-appium
      $ rvm use 1.9.3 
      $ bundle install
To run with local profile, start Appium and

     $bundle exec cucumber features/plain_note.feature
     
To run against Sauce, you need to upload App  to sauce using your sauce details also change usename and api key in the ‘features/support/env.rb‘ with you details

     curl -u USERNAME:API-KEY -X POST "http://saucelabs.com/rest/v1/storage/USERNAME/PlainNote.zip?overwrite=true" -H "Content-Type: application/octet-stream" --data-binary @/path/to/cucumber-appium/PlainNote.zip

Then you can run sauce feature with Appium.

    bundle exec cucumber features/plain_note_sauce.feature
