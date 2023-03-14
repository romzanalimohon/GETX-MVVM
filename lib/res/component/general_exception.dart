import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({Key? key, required this.onPress}) : super(key: key);

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * .15,),
          Icon(Icons.cloud_off, color: AppColor.redColor, size: 100,),
          Text('general_exception'.tr, style: TextStyle(fontSize: 25),),
          SizedBox(height: height * .15,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: AppColor.primaryTextColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('retry', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
