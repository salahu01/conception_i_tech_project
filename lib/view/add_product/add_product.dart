import 'package:conception_i_tech/core/configs/app_colors.dart';
import 'package:conception_i_tech/core/configs/app_style.dart';
import 'package:conception_i_tech/core/configs/kwidgets.dart';
import 'package:conception_i_tech/core/widgets/button.dart';
import 'package:conception_i_tech/core/widgets/textfield.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: FittedBox(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const KButton().backButton(() => Navigator.pop(context))),
        ),
        centerTitle: true,
        title: const Text('Add Products', style: AppStyle.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KTextField(title: 'Product Title'),
              KWidgets.kHeight,
              const KTextField(title: 'Select Categories'),
              KWidgets.kHeight,
              Row(
                children: const [
                  Flexible(child: KTextField(title: 'Enter Old Price')),
                  KWidgets.kWidth,
                  Flexible(child: KTextField(title: 'Enter New Price')),
                ],
              ),
              KWidgets.kHeight,
              const KTextField(title: 'Short Descreption'),
              KWidgets.kHeight,
              const KTextField(
                title: 'Description',
                maxLines: 6,
              ),
              KWidgets.kHeight,
              const KTextField(title: 'Preparation Time'),
              KWidgets.kHeight,
              const KTextField(title: 'Time'),
              KWidgets.kHeight,
              Row(
                children: const [
                  Flexible(child: KTextField(title: 'Minits')),
                  KWidgets.kWidth,
                  Flexible(child: KTextField(title: 'Hours')),
                  KWidgets.kWidth,
                  Flexible(child: KTextField(title: 'Days'))
                ],
              ),
              KWidgets.kHeight,
              const KTextField(title: 'Video Links'),
              KWidgets.kHeight,
              KWidgets.kHeight,
              KWidgets.kHeight,
              Row(
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.red.shade100),
                            child: Padding(
                              padding: const EdgeInsets.all(13),
                              child: Text(
                                'Cancel',
                                style: AppStyle.appBarTitle
                                    .copyWith(color: Colors.red, fontSize: 14),
                              ),
                            )),
                      ),
                    ),
                  ),
                  KWidgets.kWidth,
                  Flexible(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ColoredBox(
                        color: AppColors.primay,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Text(
                              'Add',
                              style: AppStyle.appBarTitle
                                  .copyWith(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
