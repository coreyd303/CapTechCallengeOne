# CapTechCallengeOne
## CapTech code challenge number 1

#### 1. Assignment

_This assignment, the first in a series, is designed to allow the developer to become familiarized with the tools necessary for development on a mobile platform. This assignment can be done for iOS, Android, mobile web, or any combination thereof._

##### The application must do the following:

* If the application is a native application is should conform to the Human Interface Guidelines (HIG) for the target device.
* Run and display a page displaying the words ‘Hello World’ centered on the top of the page and contain a button, centered half-way down the page. The button should readily appear to be a button to the user.
  * For mobile web, the page should have a fixed height and should not be scrollable.
* When the user presses the button the application should display a second page.
* The second page must contain a list of all of the date/times that the application was run.
* From the list page the user must be able to navigate back to the first page in a manner that conforms to best practices for the platform on which it is running.
* The list must be sorted by start date/time in ascending order.
* The display of the date/time should be in the format of the current locale of the device.
* The application must not crash or leak memory.
* The application must be deployed to a physical device.
* If a native application is developed it must have a custom icon.
* For native applications, it must operate correctly when the phone is in airplane mode.
* All storage of data must occur on the phone.

#### 2. Assignment Objectives
_When completed the student should have an understanding of the following concepts:_

* SDK installation
* Software installation on the target device.
* Basic application structure
* Application startup
* Application view display
* View transitions
* Table views
* Basic local storage
* Basic date formatting

#### 3. Recommended Approach
* See Jack Cox for a developer account on the Apple developer portal. This is required to enable loading the application on a hardware device.
* Web resources:
  * [Getting Stared With iOS](https://developer.apple.com/library/ios/navigation/#section=Resource%20Types&topic=Getting%20Started)
  * [iOS RoadMap](https://developer.apple.com/library/ios/referencelibrary/GettingStarted/RoadMapiOS/index.html#//apple_ref/doc/uid/TP40011343)
  * [Mobile User Experience](https://developer.apple.com/library/ios/#documentation/UserExperience/Conceptual/MobileHIG/Introduction/Introduction.html%23//apple_ref/doc/uid/TP40006556)
  * [Swift Programming Language](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

* Required Tools:
  * Xcode 6+
  * Mac with 10.10 • Suggested APIs
  * NSUserDefaults
  * UITableView and UITableViewController
    * UINavigationController

#### 3. Getting started
1. Open xcode and start a new project as a single page application
2. Initialize git from the project directory with _git init_
3. Create a gitHub repo for this project
4. [Add your project to your new repo](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)

#### 4. Extension Challenges
1. Add a "Remove" button to the navigation that removes the last record from the table
2. Write a set of UI Tests to test the following:
  * User can view all screens of the app
  * User can see data in the table
  * User can remove record from the table