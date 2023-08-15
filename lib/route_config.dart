import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_demo/main.dart';
import 'package:navigation_demo/page1.dart';

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case Page1.routeName:
      var data = settings.arguments as String;
      return CupertinoPageRoute(builder: (context) => Page1(data: data));
    case Page2.routeName:
      return CupertinoModalPopupRoute(builder: (context) => const Page2());
    case Page3.routeName:
      return CustomPageRoute(child: const Page3(), direction: AxisDirection.left);
    case Page4.routeName:
      return CustomPageRoute(child: const Page4(), direction: AxisDirection.down);
    case Page5.routeName:
      return CustomPageRoute(child: const Page5(), direction: AxisDirection.right);
    default:
      return MaterialPageRoute(builder: (context) => const MyHomePage());
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;
  CustomPageRoute({required this.child, required this.direction, RouteSettings? settings})
      : super(
            transitionDuration: const Duration(milliseconds: 300),
            reverseTransitionDuration: const Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) => child,
            settings: settings);
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
          //FadeTransition
          //opacity: animation,
          // SizeTransition
          //sizeFactor: animation,
          // RotationTransition
          // turns: Tween<double>(
          //   begin: 0.0,
          //   end: 1.0,
          // ).animate(
          //   CurvedAnimation(
          //     parent: animation,
          //     curve: Curves.linear,
          //   ),
          // ),
          // SlideTransition
          position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero).animate(animation),
          // ScaleTransition
          // scale: Tween<double>(
          //   begin: 0.0,
          //   end: 1.0,
          // ).animate(
          //   CurvedAnimation(
          //     parent: animation,
          //     curve: Curves.easeInOutCubicEmphasized,
          //   ),
          // ),
          child: child);
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
