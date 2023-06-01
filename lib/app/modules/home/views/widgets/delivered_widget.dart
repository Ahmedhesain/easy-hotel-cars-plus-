
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/app_refresh_indecetor.dart';




class DeliveredOrdersWidget extends GetView<HomeController> {
  const DeliveredOrdersWidget({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }

        return SizedBox(
            width: size.width,
            child: AppRefreshIndicator(
              onRefresh: () async => await controller.getDeliveredOrders(),
              child: Obx(() {
                return Column(
                  children: [
                    for(int i = 0; i < controller.deliverdOrders.length; i ++)
                      OrderContainer(
                          true,
                          controller.deliverdOrders[i].id.toString() ?? "",
                          controller.deliverdOrders[i].carName!,
                          controller.deliverdOrders[i].groupName!,
                          controller.deliverdOrders[i].dueDate??DateTime.now(),
                          controller.deliverdOrders[i].trafficName.toString(),
                          controller.deliverdOrders[i].isGoingAndRetrun??0,
                          controller.deliverdOrders[i].personNumber.toString() ,
                          controller.deliverdOrders[i].remark??"لايوجد" ,
                          (controller.deliverdOrders[i].dueTime??DateTime.now()).toString(),
                          controller.deliverdOrders[i].name ?? "",
                          controller.deliverdOrders[i].phone ?? "",
                          controller.deliverdOrders[i].id.toString(),
                          i,
                          controller.deliverdOrders[i].startDate??DateTime.now()

                        ,
                          controller.deliverdOrders[i].finishDate??DateTime.now()

                        ,

                      ),

                  ],
                );
              }),
            )
        );

    });
  }

}

