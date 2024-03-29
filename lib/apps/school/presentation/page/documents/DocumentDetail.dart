import 'package:learn/apps/school/controller/DocumentController.dart';
import 'package:learn/apps/school/model/document_model.dart';
import 'package:learn/apps/school/presentation/page/documents/pdf_viwer.dart';
import 'package:learn/apps/school/presentation/page/documents/share_doc.dart';
import 'package:learn/apps/school/presentation/page/home/main_branch_operation_page.dart';
import 'package:learn/apps/school/presentation/widget/app_icon.dart';
import 'package:learn/apps/school/utils/app_constants.dart';
import 'package:learn/util/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentDetail extends StatelessWidget {
  final Document documentModel;
  final DocumentController documentController;

  const DocumentDetail(
      {Key? key, required this.documentModel, required this.documentController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Immage
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 100,
                decoration: const BoxDecoration(color: Colors.blue),
              )),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const MainOperationPage(),
                          transition: Transition.rightToLeftWithFade,
                          duration: const Duration(milliseconds: 800));
                    },
                    child: const AppIcon(
                      iconData: Icons.arrow_back,
                      iconSize: 30,
                      iconColor: Colors.blue,
                      backGroundColor: Colors.white,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => const ShareDocument(),
                            transition: Transition.rightToLeftWithFade,
                            duration: const Duration(milliseconds: 800));
                      },
                      child: const AppIcon(
                          iconData: Icons.share_outlined,
                          iconSize: 30,
                          iconColor: Colors.blue,
                          backGroundColor: Colors.white))
                ],
              )),
          //Introduction of the food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 90,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.height20),
                        topRight: Radius.circular(Dimensions.height20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white),
                        child: Text(documentModel.tITLE!,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center)),
                    Expanded(
                      child:
                          PDF(AppConstants.DOC_URL + documentModel.fILEPATH!),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                  ],
                ),
              )),
          //expandable text widget
        ],
      ),
    );
  }
}
