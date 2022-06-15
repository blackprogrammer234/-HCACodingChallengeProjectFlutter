import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../detail_view/stackoverflow_details_page.dart';
import '../../home_view/stackoverflow_home_page.dart';
import '../../page_three_view/unknow_page_two_view.dart';
import '../../page_two_view/Unknow_page_three_view.dart';
import 'navigator_routes.dart';
import 'package:hca_coding_project_flutter/ui/common/routes/navigator_routes.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => StackOverflowHomePage());
      case '/stackoverflow_details':
        return MaterialPageRoute(
            builder: (context) => StackOverFlowDetailsView());
      case '/unknow_screen_two':
        return MaterialPageRoute(builder: (context) => UnknowPageTwoView());
      case '/unknow_screen_three':
        return MaterialPageRoute(builder: (context) => UnknowPageThreeView());
      default:
        return _errorRoute("Error");
    }
  }

  static Route<dynamic> _errorRoute(String errorMessage) {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Container(
            child: Center(
              child: Text("Something went wrong. Check your network"),
            ),
          ),
        );
      },
    );
  }
}
