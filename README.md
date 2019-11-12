#  Test demo utilizing robot framework. 

Each page contains a set of keywords/action that are specific to the page which are later utilized in our test cases.

## Generated results
After running the tests a report and log file appear in HTML format inside of the results directory.
 
## Using different browsers
 The browser that is used is controlled by the ${BROWSER} variable defined in Pages/LoginPage.robot resource file. Chrome browser is used by default, but can be  overridden from the command line by running:
 
`robot --variable BROWSER:Firefox Results Tests/CampaignCreationE2ETest.robot`

In the future, it would be great to have this run ontop of browser stack for crossbrowser/device testing.

### installation steps (Mac):
- sudo easy_install pip
- pip install robotframework
- pip install robotframework-SeleniumLibrary
- brew cask install chromedriver
 
#### Running the tests locally
   First, update the dummy hardcoded credentials inside of Pages/LoginPage.robot with a valid email address and password 
- from the root directory, you can then run:

`robot -d Results Tests/CampaignCreationE2ETest.robot`
