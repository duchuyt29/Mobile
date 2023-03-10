import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../../../../../../shared/styles/text_style/text_style.dart';
import '../../../../../routes/workgroup_pages.dart';
import '../../../../../shared/constants/colors.dart';
import '../controller/create_my_request_controller.dart';

class CrmCreateMyRequestPage extends GetView<CrmCreateMyRequestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          'workplace.workgroup.create.request'.tr,
          style: AppTextStyle.heavy(fontSize: 24),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
            size: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.toNamed(
                  WorkGroupRoutes.WORKPLACE_WORKGROUP_CREATE_MY_REQUEST_NEXT);
            },
            child: Text(
              'workplace.workgroup.next'.tr,
              style: AppTextStyle.heavy(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(child: _buildBodyContent()),
      ),
    );
  }

  Widget _buildBodyContent() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 4),
          height: 1,
          color: const Color.fromARGB(255, 227, 227, 227),
        ),
        const SizedBox(height: 15),
        Column(
          children: [
            _buildFormContent(),
          ],
        )
      ],
    );
  }

  Container _buildFormContent() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          FormBuilder(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      'workplace.workgroup.request.infomation'.tr,
                      style: AppTextStyle.heavy(
                          fontSize: 20, color: const Color(0xff858C94)),
                    )),
                  ],
                ),
                const SizedBox(height: 10),
                _buildItem(title: 'Ch???n quy tr??nh'),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 1, right: 24, bottom: 8),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: AppTextStyle.regular(
                                    color: AppColor.thirdTextColor),
                                children: [
                                  TextSpan(
                                      text: 'T??n y??u c???u',
                                      style: AppTextStyle.heavy(
                                          fontSize: 18,
                                          color: const Color(0xff858C94))),
                                  TextSpan(
                                    text: '*',
                                    style: AppTextStyle.heavy(
                                        color: AppColor.errorColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                    FormBuilderTextField(
                      name: 'name',
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(height: 0),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(255),
                      ],
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'crm.validation.required'.tr),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 1, right: 24, bottom: 8),
                        child: Text(
                          'M?? t???',
                          style: AppTextStyle.heavy(
                              fontSize: 18, color: const Color(0xff858C94)),
                        )),
                    FormBuilderTextField(
                      maxLines: 3,
                      name: 'name',
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(height: 0),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(255),
                      ],
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'crm.validation.required'.tr),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Th??ng tin c??ng vi???c'.tr,
                          style: AppTextStyle.heavy(
                              fontSize: 20, color: const Color(0xff858C94)),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 1, right: 24, bottom: 8),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: AppTextStyle.regular(
                                    color: AppColor.thirdTextColor),
                                children: [
                                  TextSpan(
                                      text: 'Ng?????i ch???u tr??ch nhi???m',
                                      style: AppTextStyle.heavy(
                                          fontSize: 18,
                                          color: const Color(0xff858C94))),
                                  TextSpan(
                                    text: '*',
                                    style: AppTextStyle.heavy(
                                        color: AppColor.errorColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                    FormBuilderTextField(
                      name: 'name',
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(height: 0),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(255),
                      ],
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'crm.validation.required'.tr),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _buildItem(title: 'Th???i h???n ho??n th??nh'),
                const SizedBox(height: 10),
                _buildItem(title: 'Lo???i ngh???'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: _buildItem(title: 'Ng??y ngh??? t???')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child: _buildItem(title: 'Ngh??? ?????n ng??y'))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: _buildItem(title: 'S??? ng??y ngh???')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child: _buildItem(title: 'S??? gi??? ngh???'))
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 1, right: 24, bottom: 8),
                        child: Text(
                          'M?? t???',
                          style: AppTextStyle.heavy(
                              fontSize: 18, color: const Color(0xff858C94)),
                        )),
                    FormBuilderTextField(
                      maxLines: 3,
                      name: 'name',
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        errorStyle: TextStyle(height: 0),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(255),
                      ],
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'crm.validation.required'.tr),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: Text('T??i li???u ????nh k??m')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Icon(Icons.file_upload))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _buildItem({required String title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(
              left: 1,
            ),
            child: Text(
              title,
              style: AppTextStyle.heavy(
                  fontSize: 18, color: const Color(0xff858C94)),
            )),
        FormBuilderTextField(
          name: 'name',
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            errorStyle: TextStyle(height: 0),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(255),
          ],
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(
                errorText: 'crm.validation.required'.tr),
          ]),
        ),
      ],
    );
  }
}
