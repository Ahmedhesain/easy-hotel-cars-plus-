// To parse this JSON data, do
//
//     final orderResponse = orderResponseFromJson(jsonString);

import 'dart:convert';

OrderResponse orderResponseFromJson(String str) => OrderResponse.fromJson(json.decode(str));

String orderResponseToJson(OrderResponse data) => json.encode(data.toJson());

class OrderResponse {
  OrderResponse({
    this.id,
    this.markEdit,
    this.msg,
    this.msgType,
    this.markDisable,
    this.createdBy,
    this.createdDate,
    this.index,
    this.companyId,
    this.createdByName,
    this.branchId,
    this.deletedBy,
    this.deletedDate,
    this.igmaOwnerId,
    this.companyCode,
    this.branchSerial,
    this.igmaOwnerSerial,
    this.userCode,
    this.trafficId,
    this.trafficName,
    this.carId,
    this.carName,
    this.groupId,
    this.groupName,
    this.personNumber,
    this.isGoingAndRetrun,
    this.dueDate,
    this.dueTime,
    this.resOfferId,
    this.customerId,
    this.customerName,
    this.discountValue,
    this.discountType,
    this.discountRate,
    this.salePrice,
    this.salesDetailCarItemDtoList,
    this.addtionsDtoList,
    this.finishBy,
    this.finishName,
    this.startDate,
    this.finishDate,
    this.remark,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.dateClose,
  });

  int? id;
  bool? markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  int? createdBy;
  String? createdDate;
  int? index;
  int? companyId;
  dynamic createdByName;
  int? branchId;
  dynamic deletedBy;
  dynamic deletedDate;
  dynamic igmaOwnerId;
  dynamic companyCode;
  dynamic branchSerial;
  dynamic igmaOwnerSerial;
  dynamic userCode;
  int? trafficId;
  String? trafficName;
  int? carId;
  String? carName;
  int? groupId;
  String? groupName;
  int? personNumber;
  int? isGoingAndRetrun;
  DateTime? dueDate;
  DateTime? dueTime;
  dynamic resOfferId;
  int? customerId;
  String? customerName;
  double? discountValue;
  int? discountType;
  double? discountRate;
  double? salePrice;
  List<dynamic>? salesDetailCarItemDtoList;
  List<dynamic>? addtionsDtoList;
  dynamic finishBy;
  dynamic finishName;
  DateTime? startDate;
  DateTime? finishDate;
  String? remark;
  String? name;
  String? email;
  String? phone;
  dynamic address;
  dynamic dateClose;

  static List<OrderResponse> fromList(dynamic json) => List.from(json.map((e)=> OrderResponse.fromJson(e)));


  factory OrderResponse.fromJson(Map<String, dynamic> json) => OrderResponse(
    id: json["id"],
    markEdit: json["markEdit"],
    msg: json["msg"],
    msgType: json["msgType"],
    markDisable: json["markDisable"],
    createdBy: json["createdBy"],
    createdDate: json["createdDate"],
    index: json["index"],
    companyId: json["companyId"],
    createdByName: json["createdByName"],
    branchId: json["branchId"],
    deletedBy: json["deletedBy"],
    deletedDate: json["deletedDate"],
    igmaOwnerId: json["igmaOwnerId"],
    companyCode: json["companyCode"],
    branchSerial: json["branchSerial"],
    igmaOwnerSerial: json["igmaOwnerSerial"],
    userCode: json["userCode"],
    trafficId: json["trafficId"],
    trafficName: json["trafficName"],
    carId: json["carId"],
    carName: json["carName"],
    groupId: json["groupId"],
    groupName: json["groupName"],
    personNumber: json["personNumber"],
    isGoingAndRetrun: json["isGoingAndRetrun"],
    dueDate: json["comingDate"] == null ? null : DateTime.parse(json["comingDate"]),
    dueTime: json["comingTime"] == null ? null : DateTime.parse(json["comingTime"]),
    resOfferId: json["resOfferId"],
    customerId: json["customerId"],
    customerName: json["customerName"],
    discountValue: json["discountValue"].toDouble(),
    discountType: json["discountType"],
    discountRate: json["discountRate"].toDouble(),
    salePrice: json["salePrice"].toDouble(),
    salesDetailCarItemDtoList: json["salesDetailCarItemDTOList"] == null ? [] : List<dynamic>.from(json["salesDetailCarItemDTOList"]!.map((x) => x)),
    addtionsDtoList: json["addtionsDTOList"] == null ? [] : List<dynamic>.from(json["addtionsDTOList"]!.map((x) => x)),
    finishBy: json["finishBy"],
    finishName: json["finishName"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    finishDate: json["finishDate"] == null ? null : DateTime.parse(json["finishDate"]),
    remark: json["remark"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    dateClose: json["dateClose"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "markEdit": markEdit,
    "msg": msg,
    "msgType": msgType,
    "markDisable": markDisable,
    "createdBy": createdBy,
    "createdDate": createdDate,
    "index": index,
    "companyId": companyId,
    "createdByName": createdByName,
    "branchId": branchId,
    "deletedBy": deletedBy,
    "deletedDate": deletedDate,
    "igmaOwnerId": igmaOwnerId,
    "companyCode": companyCode,
    "branchSerial": branchSerial,
    "igmaOwnerSerial": igmaOwnerSerial,
    "userCode": userCode,
    "trafficId": trafficId,
    "trafficName": trafficName,
    "carId": carId,
    "carName": carName,
    "groupId": groupId,
    "groupName": groupName,
    "personNumber": personNumber,
    "isGoingAndRetrun": isGoingAndRetrun,
    "dueDate": dueDate!.toIso8601String(),
    "dueTime": dueTime!.toIso8601String(),
    "resOfferId": resOfferId,
    "customerId": customerId,
    "customerName": customerName,
    "discountValue": discountValue,
    "discountType": discountType,
    "discountRate": discountRate,
    "salePrice": salePrice,
    "salesDetailCarItemDTOList": salesDetailCarItemDtoList == null ? [] : List<dynamic>.from(salesDetailCarItemDtoList!.map((x) => x)),
    "addtionsDTOList": addtionsDtoList == null ? [] : List<dynamic>.from(addtionsDtoList!.map((x) => x)),
    "finishBy": finishBy,
    "finishName": finishName,
    "startDate": startDate!.toIso8601String(),
    "finishDate": finishDate!.toIso8601String(),
    "remark": remark,
    "name": name,
    "email": email,
    "phone": phone,
    "address": address,
    "dateClose": dateClose,
  };
}
