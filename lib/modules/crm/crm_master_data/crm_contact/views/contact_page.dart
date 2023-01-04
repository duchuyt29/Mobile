import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_api/crm_api/models/contact/contact.dart';
import '../../../../../../../shared/styles/text_style/text_style.dart';
import '../../../../../data/app_data_global.dart';
import '../../../../../shared/constants/colors.dart';
import '../../../../../shared/widgets/crm/widget_button.dart';
import '../controllers/contact_controller.dart';

class CrmContactPage extends GetView<ContactController> {
  CrmContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'crm.contact'.tr,
          style: AppTextStyle.regular(fontSize: 20, color: Colors.white),
        ),
        actions: [
           Visibility(
            visible: AppDataGlobal
                    .userConfig?.menuActions?.crmMasterDataContact?.view !=
                null,
            child: CrmWidgetButton(
              bgColor: const Color.fromARGB(255, 85, 176, 249),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 18,
              ),
              onTap: controller.onCreateNew,
            ),
          ),
          const SizedBox(width: 20),
          Visibility(
            visible: controller.isMultiSelect.value,
            child: InkWell(
              onTap: () {
                controller.onChangeList();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 20,
                child: Text(
                  'Chọn',
                  style: AppTextStyle.heavy(
                      color: AppColor.primaryBackgroundColor),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        top: false,
        child: _buildBodyContent(),
      ),
    );
  }

  Widget _buildBodyContent() {
    return Column(
      children: [
        _buildSearchBar(),
        Expanded(
          child: Obx(
            () => ListView.separated(
              itemCount: controller.filterData.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) => controller.isMultiSelect.value
                  ? _buildItemCellMultiChoose(controller.filterData[index])
                  : _buildItemCellSingleChoose(controller.filterData[index]),
            ),
          ),
        ),
      ],
    );
  }

  Container _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        textInputAction: TextInputAction.search,
        onChanged: controller.onSearch,
        decoration: InputDecoration(
          hintText: 'search'.tr,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 26,
          ),
        ),
      ),
    );
  }

  Widget _buildItemCellMultiChoose(Contact item) {
    return Obx(
      () => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        horizontalTitleGap: 5,
        leading: controller.listSelectId.contains(item.id)
            ? Icon(
                Icons.radio_button_checked,
                color: AppColor.primaryColor,
              )
            : Icon(
                Icons.radio_button_off,
                color: AppColor.primaryColor,
              ),
        title: Text(item.contactName ?? ''),
        onTap: () {
          controller.onChange(item);
        },
      ),
    );
  }

  Widget _buildItemCellSingleChoose(Contact item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      horizontalTitleGap: 5,
      leading: controller.initialValue == item.id
          ? Icon(
              Icons.radio_button_checked,
              color: AppColor.primaryColor,
            )
          : Icon(
              Icons.radio_button_off,
              color: AppColor.primaryColor,
            ),
      title: Text(item.contactName ?? ''),
      onTap: () {
        controller.onChange(item);
      },
    );
  }
}
