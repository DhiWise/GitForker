
# GitForker

<div>
  <h1 align="center">GitForker created with DhiWise Flutter Builder  🚀 and GitHub APIs.  </h1>
  <strong>
    Generated with ❤️ from Dhiwise
  </strong>
</div>

### About App
There’s a lot you can do on official GitHub Android App. This GitForker App provides features like **Forks** a repository, find people, organization,repository and assigned pull requests and issues. this app making tasks easy for you to perform.

### Screenshots
![GitForker](https://uploads-ssl.webflow.com/618fa90c201104b94458e1fb/632b0015d3bb4980495ffbc0_Mockup.jpg "GitForker")

### Features
- Login with GitHub personal access token.
- Listing of assigned issues and pull requests.
- Listing of loggedIn user repositories, organizations and starred repositories.
- Notifications.
- Search Repositories, Peoples and Organizations.
- **Fork** the repository.
- Profile view.
- Navigation Support.

### Table of Contents
- [System Requirements](#system-requirements)
- [Figma design guideline for better accuracy](#figma-design-guideline-for-better-accuracy)
- [App Navigations](#app-navigations)
- [Project Structure](#project-structure)
- [How you can do code formatting?](#how-you-can-do-code-formatting)
- [How you can improve the readability of code?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#join-our-community)

### System Requirements

Dart SDK Version 2.17.0 or greater.
Flutter SDK Version 3.0.0 or greater.

### Figma design guideline for better accuracy

Read our guidelines to increase the accuracy of design conversion to code by optimizing Figma designs.
https://docs.dhiwise.com/knowledgehub/reference-guide-and-tools/figma

### App Navigations

Check your app's UI from the AppNavigation screen of your app.

### Project Structure

After successful build, your application structure should look like this:


```
.
├── android                         - contains files and folders required for running the application on an Android operating system.
├── assets                          - contains all images and fonts of your application.
├── ios                             - contains files required by the application to run the dart code on iOS platforms.
├── lib                             - Most important folder in the project, used to write most of the dart code.
    ├── main.dart                   - starting point of the application
    ├── core
    │   ├── app_export.dart         - contains commonly used file imports 
    │   ├── constants               - contains all constants classes
    │   ├── errors                  - contains error handling classes                  
    │   ├── network                 - contains network related classes
    │   └── utils                   - contains common files and utilities of project
    ├── data
    │   ├── apiClient               - contains api calling methods 
    │   ├── models                  - contains request/response models 
    │   └── repository              - network repository
    ├── localization                - contains localization classes
    ├── presentation                - contains all screens and screen controllers
    │   └── screens                 - contains all screens
    ├── routes                      - contains all the routes of application
    └── theme                       - contains app theme and decoration classes
```


### How you can do code formatting?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How to run
Add [GitHub personal access token](https://github.com/settings/tokens) for login.

### How to create personal access token in GitHub.
1. Verify your email address, if it hasn't been verified yet.
2. Click your profile photo, then click Settings.
3. In the left sidebar, click  Developer settings.
4. In the left sidebar, click Personal access tokens.
5. Click Generate new token.
6. Give your token a descriptive name.
7. Select the expiration time.
8. Select the scopes, or permissions, you'd like to grant this token. To use your token to access repositories from the command line, select repo.
9. Click Generate token.
10. Add token in the token screen.

### How you can improve the readability of code?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used


- get - State management

https://pub.dev/packages/get

- connectivity_plus - For status of network connectivity

https://pub.dev/packages/connectivity_plus

- pull_to_refresh - For list functionalities

https://pub.dev/packages/pull_to_refresh

- cupertino_icons - For iOS icons

https://pub.dev/packages/cupertino_icons

- shared_preferences - Provide persistent storage for simple data

https://pub.dev/packages/shared_preferences

- cached_network_image - For storing internet image into cache

https://pub.dev/packages/cached_network_image

- markdown - Parse readme markdown into HTML

https://pub.dev/packages/markdown

- fluttertoast - Send notification

https://pub.dev/packages/fluttertoast

- flutter_html -  Widget for rendering converted markdown in to HTML and CSS as Flutter widgets

https://pub.dev/packages/flutter_html


### MIT License

Copyright (c) 2022 DhiWise

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Join our community

- [DhiWise Discord Community](https://discord.gg/hTuNauNjyJ)
- [Github](https://github.com/DhiWise)
- [YouTube](https://www.youtube.com/c/DhiWise)
- [DhiWise User Documentation](https://docs.dhiwise.com/)
