// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityOrderResponse _$ActivityOrderResponseFromJson(
        Map<String, dynamic> json) =>
    ActivityOrderResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ActivityOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..code = json['code'] as String?
      ..success = json['success'] as bool? ?? false
      ..title = json['title'] as String?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ActivityOrderResponseToJson(
        ActivityOrderResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'success': instance.success,
      'title': instance.title,
      'message': instance.message,
      'data': instance.data,
    };
