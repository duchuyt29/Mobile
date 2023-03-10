import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../shared/styles/text_style/text_style.dart';
import '../controllers/request_need_my_approval_views_history_controller.dart';

class RequestNeedMyApprovalViewHistoryPage
    extends GetView<RequestNeedMyApprovalViewHistoryController> {
  RequestNeedMyApprovalViewHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff493083),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          'workplace.workgroup.history'.tr,
          style: AppTextStyle.heavy(fontSize: 22, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 18,
            )),
      ),
      body: SafeArea(
        bottom: false,
        child: _buildBodyContent(),
      ),
    );
  }

  Widget _buildBodyContent() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'workplace.workgroup.change.status'.tr,
                          style: AppTextStyle.heavy(
                              fontSize: 20, color: const Color(0xff172B4D)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'ABC ???? chuy???n t??? D sang E',
                          style: AppTextStyle.regular(
                              color: const Color(0xff493083)),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '11/11/2022 09:00',
                              style: AppTextStyle.regular(
                                  color: const Color(0xff493083)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 2,
                    thickness: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'workplace.workgroup.change.status'.tr,
                          style: AppTextStyle.heavy(
                              fontSize: 20, color: const Color(0xff172B4D)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'ABC ???? chuy???n t??? D sang E',
                          style: AppTextStyle.regular(
                              color: const Color(0xff493083)),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '11/11/2022 09:00',
                              style: AppTextStyle.regular(
                                  color: const Color(0xff493083)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 2,
                    thickness: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'workplace.workgroup.change.status'.tr,
                          style: AppTextStyle.heavy(
                              fontSize: 20, color: const Color(0xff172B4D)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'ABC ???? chuy???n t??? D sang E',
                          style: AppTextStyle.regular(
                              color: const Color(0xff493083)),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '11/11/2022 09:00',
                              style: AppTextStyle.regular(
                                  color: const Color(0xff493083)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 2,
                    thickness: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemField({
    required String title,
    required String value,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        children: [
          Text(
            title + ': ',
            style: AppTextStyle.regular(),
          ),
          Text(value, style: AppTextStyle.regular()),
        ],
      ),
    );
  }
}
