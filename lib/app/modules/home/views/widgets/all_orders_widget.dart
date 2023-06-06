import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/app_refresh_indecetor.dart';

class AllOrdersWidget extends GetView<HomeController> {
  const AllOrdersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }
      return SizedBox(
          width: size.width,
          child: AppRefreshIndicator(
            onRefresh: () async => await controller.getAllOrders(),
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.allOrders.length,
                padding: const EdgeInsets.all(4),
                dragStartBehavior: DragStartBehavior.start,
                itemBuilder: (context, i) {
                  final order = controller.allOrders[i];
                  return OrderContainer(
                    true,
                    order.id.toString() ?? "",
                    order.carName!,
                    order.groupName!,
                    order.dueDate ?? DateTime.now(),
                    order.trafficName.toString(),
                    order.isGoingAndRetrun ?? 0,
                    order.personNumber.toString(),
                    order.remark ?? "لايوجد",
                    (order.dueTime ?? DateTime.now()).toString(),
                    order.name ?? "",
                    order.phone ?? "",
                    order.customerId.toString(),
                    i,
                    order.startDate ?? DateTime.now(),
                    order.finishDate ?? DateTime.now(),
                  );
                },
              );
            }),
          ));
    });
  }
}
