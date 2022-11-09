import 'package:conception_i_tech/core/configs/app_style.dart';
import 'package:conception_i_tech/core/configs/kwidgets.dart';
import 'package:conception_i_tech/core/widgets/button.dart';
import 'package:conception_i_tech/core/widgets/single_product.dart';
import 'package:conception_i_tech/view/add_product/add_product.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: FittedBox(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const KButton().backButton(() {})),
        ),
        centerTitle: true,
        title: const Text('All Products', style: AppStyle.appBarTitle),
        actions: [
          TextButton.icon(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddProduct())),
            label: Text('ADD',
                style: TextStyle(color: Theme.of(context).primaryColor)),
            icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, size.height * .08),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: KWidgets.kInputDecoration.copyWith(
                hintText: 'Search Product..',
                fillColor: Colors.transparent,
                prefixIcon: Icon(Icons.search,
                    size: 23, color: Theme.of(context).hintColor),
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: KButton(icon: Icons.equalizer),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: 5,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => KWidgets.kHeight,
          itemBuilder: (BuildContext context, int index) {
            return const SingleProduct();
          },
        ),
      ),
    );
  }
}
