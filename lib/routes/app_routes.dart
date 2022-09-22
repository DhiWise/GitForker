import 'package:github/presentation/issue_screen/binding/issue_binding.dart';
import 'package:github/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:github/presentation/search_screen/search_screen.dart';
import 'package:github/presentation/search_screen/binding/search_binding.dart';
import 'package:github/presentation/text_screen/text_screen.dart';
import 'package:github/presentation/text_screen/binding/text_binding.dart';
import 'package:github/presentation/home_screen/home_screen.dart';
import 'package:github/presentation/home_screen/binding/home_binding.dart';
import 'package:github/presentation/starred_screen/starred_screen.dart';
import 'package:github/presentation/starred_screen/binding/starred_binding.dart';
import 'package:github/presentation/organization_screen/organization_screen.dart';
import 'package:github/presentation/organization_screen/binding/organization_binding.dart';
import 'package:github/presentation/repositories_screen/repositories_screen.dart';
import 'package:github/presentation/repositories_screen/binding/repositories_binding.dart';
import 'package:github/presentation/profile_screen/profile_screen.dart';
import 'package:github/presentation/profile_screen/binding/profile_binding.dart';
import 'package:github/presentation/pinned_screen/pinned_screen.dart';
import 'package:github/presentation/pinned_screen/binding/pinned_binding.dart';
import 'package:github/presentation/pull_requests_screen/pull_requests_screen.dart';
import 'package:github/presentation/pull_requests_screen/binding/pull_requests_binding.dart';
import 'package:github/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:github/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:github/presentation/users_screen/binding/users_binding.dart';
import 'package:github/presentation/users_screen/users_screen.dart';
import 'package:github/presentation/notifications_screen/notifications_screen.dart';
import 'package:github/presentation/issue_screen/issue_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String searchScreen = '/search_screen';

  static String textScreen = '/text_screen';

  static String homeScreen = '/home_screen';

  static String starredScreen = '/starred_screen';

  static String organizationScreen = '/organization_screen';

  static String repositoriesScreen = '/repositories_screen';

  static String profileScreen = '/profile_screen';

  static String pinnedScreen = '/pinned_screen';

  static String pullRequestsScreen = '/pull_requests_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String usersScreen = '/users_screen';

  static String notificationScreen = '/notification';

  static String pullScreen = '/pull';

  static String issueScreen = '/issue';


  static List<GetPage> pages = [
    GetPage(
      name: issueScreen,
      page: () => IssueScreen(),
      bindings: [
        IssueBinding(),
      ],
    ),
    GetPage(
      name: pullScreen,
      page: () => PullRequestsScreen(),
      bindings: [
        PullRequestsBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: textScreen,
      page: () => TextScreen(),
      bindings: [
        TextBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: starredScreen,
      page: () => StarredScreen(),
      bindings: [
        StarredBinding(),
      ],
    ),
    GetPage(
      name: organizationScreen,
      page: () => OrganizationScreen(),
      bindings: [
        OrganizationBinding(),
      ],
    ),
    GetPage(
      name: repositoriesScreen,
      page: () => RepositoriesScreen(),
      bindings: [
        RepositoriesBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: pinnedScreen,
      page: () => PinnedScreen(),
      bindings: [
        PinnedBinding(),
      ],
    ),
    GetPage(
      name: pullRequestsScreen,
      page: () => PullRequestsScreen(),
      bindings: [
        PullRequestsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => TextScreen(),
      bindings: [
        TextBinding(),
      ],
    ),
    GetPage(
      name: usersScreen,
      page: () => UsersScreen(),
      bindings: [
        UsersBinding(),
      ],
    ),
  ];
}
