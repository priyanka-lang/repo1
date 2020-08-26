# Automation Test using RobotFramework

### Tools
1. Selenium
2. Robot Framework
3. Python

### How to run tests
1. Clone this repo.
2. Open a shell in the folder of this repo, run,
    ```sh
   robot -d results --variable browser:chrome --variable url:http://automationpractice.com/index.php Tests/TC1_CreateNewUserAccount.robot  
    ```