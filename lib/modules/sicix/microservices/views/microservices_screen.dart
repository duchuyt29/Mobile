import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/app_data_global.dart';
import '../../../../resource/assets_constant/images_constants.dart';
import '../../../../routes/workgroup_pages.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/styles/text_style/text_style.dart';
import '../../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../../shared/widgets/widget_avatar.dart';
import '../controllers/microservice_controllers.dart';

part 'microservices_extension.dart';

class MicroservicePage extends GetView<MicroserviceController> {
  const MicroservicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          'microservice.title'.tr,
          style: AppTextStyle.heavy(
            fontSize: 20,
            color: AppColor.secondTextColor,
          ),
        ),
        leading: IconButton(
          onPressed: controller.onChangeCompany,
          icon: WidgetAvatar(
            size: 32,
            fit: BoxFit.contain,
            isUrl: true,
            name: controller.companySelected.value?.name ?? '',
            avatar: controller.companySelected.value?.getAvatar(),
          ),
        ),
      ),
      body: _buildBodyContent(),
    );
  }

  Widget _buildBodyContent() {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Visibility(
                    visible: AppDataGlobal.env != PROD_ENVIRONMENT,
                    child: _buildListType(title: 'eOffice', children: [
                      Row(
                        children: [
                          _buildItemMicroservice(
                              title: 'Truy???n th??ng',
                              image: ImageConstants.workPlaceNews,
                              onTap: () {}),
                          _buildItemMicroservice(
                              title: 'Nh??m l??m vi???c',
                              image: ImageConstants.workPlaceWorkGroup,
                              onTap: () {
                                Get.toNamed(
                                    WorkGroupRoutes.WORKPLACE_WORKGROUP_MENU);
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          _buildItemMicroservice(
                              title: 'Trao ?????i',
                              image: ImageConstants.workPlaceChat,
                              onTap: () {}),
                          _buildItemMicroservice(
                              title: 'L??u tr???',
                              image: ImageConstants.workPlaceStorage,
                              onTap: () {}),
                        ],
                      ),
                    ]),
                  ),
                  Visibility(
                   visible: AppDataGlobal.env != PROD_ENVIRONMENT,
                    child:
                        _buildListType(title: 'Qu???n l?? c??ng vi???c', children: [
                      Row(
                        children: [
                          _buildItemMicroservice(
                              title: 'QL d??? ??n',
                              image: ImageConstants.workPlaceProject,
                              onTap: () {}),
                          _buildItemMicroservice(
                              title: 'H??? tr??? s??? c???',
                              image: ImageConstants.crmTicket,
                              onTap: () {}),
                        ],
                      ),
                    ]),
                  ),
                  Visibility(
                    visible: AppDataGlobal.env != PROD_ENVIRONMENT,
                    child: _buildListType(title: 'Qu???n l?? nh??n s???', children: [
                      Row(
                        children: [
                          _buildItemMicroservice(
                              title: 'Nh??n s???',
                              image: ImageConstants.hcmHrm,
                              onTap: () {}),
                          _buildItemMicroservice(
                              title: 'C??ng/L????ng',
                              image: ImageConstants.hcmTimeSalary,
                              onTap: () {}),
                        ],
                      ),
                    ]),
                  ),
                  _buildListType(
                      title: 'Qu???n l?? quan h??? kh??ch h??ng',
                      children: [
                        Row(
                          children: [
                            _buildItemMicroservice(
                                title: 'QL b??n h??ng',
                                image: ImageConstants.crmCrm,
                                onTap: controller.onViewCrm),
                            Visibility(
                               visible: AppDataGlobal.env == PROD_ENVIRONMENT,
                               child: Expanded(child: Container())),
                            Visibility(
                             visible: AppDataGlobal.env != PROD_ENVIRONMENT,
                              child: _buildItemMicroservice(
                                  title: 'Y??u c???u s??? c???',
                                  image: ImageConstants.crmTicket,
                                  onTap: () {}),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
