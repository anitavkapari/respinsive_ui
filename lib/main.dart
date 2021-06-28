import 'package:commonwidget/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'GoodDayWidget.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Sizer(builder: (context, orientation, deviceType) {
      return   MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        home: ChangeNotifierProvider<GoodDayWidgetModel>(
          create: (context) => GoodDayWidgetModel(),
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  GoodDayWidget(),
                ],
              ),
            ),
            floatingActionButton: Builder(
              builder: (context) => Consumer<GoodDayWidgetModel>(
                  builder: (context, model, child) =>
                  new FloatingActionButton(onPressed: () {
                    model.updateModel();
                  })),
            ),
          ),
        ),
      );
    });
  }
}
