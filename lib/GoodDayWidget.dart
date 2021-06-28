
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class GoodDayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Consumer<GoodDayWidgetModel>(builder: (context, model, child) {
      return Container(
        height: 30.h,
        padding: new EdgeInsets.all(2.h),
          margin: new EdgeInsets.only(bottom:2.h,left: 2.h,right: 2.h),
          decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(2.h),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                blurRadius: 3.h,
                offset: Offset(0.0,10),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(model.goodDayCafe, style: Theme.of(context).textTheme.headline5.
              copyWith(color:Theme.of(context).colorScheme.secondary ),),
              _rating(context, model),
              _map(context, model),
              Container(
                alignment: Alignment.center,
                height: 3.9.h,
                width: 28.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.all(Radius.circular(2.h))),
                child: Text('20-20  min', style: Theme.of(context).textTheme.headline1.
                copyWith(color: Theme.of(context).colorScheme.onSecondary)),
              )
            ],
          )
      );
        }
    )
    );
  }

  Container _rating(BuildContext context, GoodDayWidgetModel model) {
    return Container(
    //  margin: EdgeInsets.only(top: 10.0,bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(model.cafe, style: Theme.of(context).textTheme.headline2.
          copyWith(fontSize: 10.sp),),
          Row(
            children: [
              Text(model.boldText,
                style: Theme.of(context).textTheme.button.
                copyWith(fontSize: 15.sp,fontWeight: FontWeight.bold),),
              SizedBox(width: 3.w,),
              Text(model.rating,
                style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10.sp),),
            ],
          ),
        ],
      ),
    );
  }

  Container _map(BuildContext context, GoodDayWidgetModel model) {
    return Container(
      //margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Theme.of(context).colorScheme.primary,
            size: 3.h,
          ),
          SizedBox(width: 5,),
          Text( model.street, style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 10.sp),),
        ],
      ),
    );
  }
}

class GoodDayWidgetModel extends ChangeNotifier {
  String goodDayCafe = "Good Day Cafe";
  String time = "20-20min";
  String cafe = "Cafe * Western Food * \$";
  String street = "456 York Street Sydney";
  String boldText = "4.9";
  String rating = "(210 rating)";

  updateModel() {
    goodDayCafe = "Better Day Cafe";
    time = "22-22min";
    cafe = "Cafe * Eastern Food * \$";
    street = "410 York Street Sydney";
    rating = "(310 rating)";

    notifyListeners();
  }
}
