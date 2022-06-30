// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/constants.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/screens/details/controller/detailcontroller.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:get/get.dart';

class ProductImages extends StatelessWidget with BaseController {
  ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

//   @override
//   ProductImagesState createState() => ProductImagesState();
// }

// class ProductImagesState extends State<ProductImages> {
  // int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      initState: (_) {},
      builder: (_) => Column(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(238),
            child: AspectRatio(
              aspectRatio: 1,
              child: Hero(
                tag: product.id.toString(),
                child:
                    Image.asset(product.images[detailController.selectedImage]),
              ),
            ),
          ),
          // SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(product.images.length,
                  (index) => buildSmallProductPreview(index)),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        // detailController.selectedImage = index;
        detailController.updateImage(index);
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Theme.of(Get.context!).primaryColorLight,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: LighColors.kPrimaryColor.withOpacity(
                  detailController.selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(product.images[index]),
      ),
    );
  }
}
