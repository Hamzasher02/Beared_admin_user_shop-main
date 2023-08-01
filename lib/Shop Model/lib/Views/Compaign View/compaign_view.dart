
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_field.dart';
import '../../Components/my_tile.dart';
import '../Create Compaign View/create_compaign_view.dart';
import '../Stats View/stats_view.dart';
import 'Providers/switch_provider.dart';

class CompaignView extends StatefulWidget {
  const CompaignView({Key? key}) : super(key: key);

  @override
  State<CompaignView> createState() => _CompaignViewState();
}

class _CompaignViewState extends State<CompaignView> {


  final giftController = TextEditingController();
  final giftFocusNode = FocusNode();

  List<String> titleArray = [
    'Campaign # 1',
    'Campaign # 2',
    'Campaign # 3',
    'Campaign # 4',
  ];
  List<String> subTitleArray = [
    'Expires in 3 Days',
    'Expires in 7 Days',
    'Expires in 30 Days',
    'Never Expire',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Campaign',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Your Active Campaign ',
                ),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                height: 400.h,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: MyTile(
                        title: titleArray[index],
                        subtitle: subTitleArray[index],
                        trailing: Icon(
                          Icons.edit,
                          color: AppColors.grayText2,
                          size: 18,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Text18Regular(text: 'Gifts', textColor: AppColors.grayText2),
              SizedBox(height: 20.h),
              CustomContainer2(
                h: 177.h,
                w: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text16Regular(
                            text: 'Gifts Cards',
                          ),
                          SizedBox(height: 10.h),
                          Text14(
                              text:
                                  'Give gift cards to my bearded customers\nin the form of discounts. An email will be\nsent 7 days before the birthday\nautomatically ',
                              textColor: AppColors.grayText)
                        ],
                      ),
                      Consumer<SwitchProvider>(
                          builder: (context, switchProvider, child) {
                        return Switch(
                          activeColor: AppColors.whiteColor,
                          activeTrackColor: AppColors.buttonColor,

                          value: switchProvider.isSwitched,
                          onChanged: (value) {
                            switchProvider.toggleSwitch();
                          },
                        );
                      })
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: giftController,
                focusNode: giftFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Gift in €',
              ),
              SizedBox(height: 65.h),
              CustomButton(
                  title: 'View Stats',
                  onPress: () {
                    Get.to(() => const StatsView());
                  }),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const CreateCompaignView());
        },
        shape: const CircleBorder(),
        backgroundColor: AppColors.buttonColor,
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
