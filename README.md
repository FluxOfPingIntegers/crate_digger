Crate Digger

This is a record store locating rails app I am making as part of my phase 3 project for Flatiron school.  It utilizes the yelp API and will list record stores for different locations.

Current build status: Under development

Getting Started

Step 1: At the top of the screen click the "SignUp" option if you don't already have an account. follow the prompts for creating an account

Step 2: Select the State in which the city you would like to view the record stores for resides.

Step 3: Select the city you would like to view record stores for

Step 4: Pick from the stores listed to view information about them and create/read comments!  Have fun :)

Installation

First You will need developer software, I used Visual Studio Code. Depending on your operating system you should follow these instructions: Windows: https://code.visualstudio.com/docs/setup/windows macOS: https://code.visualstudio.com/docs/setup/mac Linux: https://code.visualstudio.com/docs/setup/linux

Second You will need a Ruby library on your machine. Within terminal please follow the instructions found here: https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/

Third You will need to clone the repo for this software and pull it up in VS Code. In your terminal please navigate to the folder you would like the files for this software to be and type "git clone git@github.com:FluxOfPingIntegers/crate_digger.git" then "cd crate_digger" then "code .".

Forth Please follow the instructions for the rails-dotenv gem you will use to hide your yelp and google id/keys: https://github.com/bkeepers/dotenv

Fifth you will need to register your app with the Yelp API (documentation: https://www.yelp.com/developers/documentation/v3/get_started)

Sixth you will need to register your app with Google in order to allow users to sign in via their google accounts: https://console.developers.google.com/

Finally you are ready to proceed to the Getting Started section of this README

Contribute
 This is a project I am building for school (and for fun) and I am not currently looking for contributors. This may change in the future though!

Author

Ryan Schleck – Flatiron student
Acknowledgments

• The very supportive slack community at Flatiron
Tech/Gems used • Ruby • All Ruby gems can be found in the Gemfile

License

MIT License -
Copyright 2021 Anyone Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.