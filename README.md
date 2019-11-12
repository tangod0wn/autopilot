#  Test demo utilizing robot framework. 

Each page contains a set of keywords/action that are specific to the page which are later utilized in our test cases.

##Generated results
After running the tests a report and log file appear in HTML format inside of the results directory.
 
##Using different browsers
 The browser that is used is controlled by the ${BROWSER} variable defined in Pages/LoginPage.robot resource file. Chrome browser is used by default, but can be  overridden from the command line by running:
 
`robot --variable BROWSER:Firefox Results Tests/CampaignCreationE2ETest.robot`


###installation steps (Mac):
- sudo easy_install pip
- pip install robotframework
- pip install robotframework-SeleniumLibrary
- brew cask install chromedriver
 
#### Running the tests locally
- from the root directory, run:

`robot -d Results Tests/CampaignCreationE2ETest.robot`
