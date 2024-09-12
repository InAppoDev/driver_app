// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_detail_model/dispatch_list_detail_model.dart';

part 'dispatch_list_model.freezed.dart';
part 'dispatch_list_model.g.dart';

@freezed
class DispatchListModel with _$DispatchListModel {
  const factory DispatchListModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'route_total_mi') required String routeTotalMi,
    @JsonKey(name: 'waypoints')
    required List<DispatchListDetailModel> waypoints,
  }) = _DispatchListModel;

  factory DispatchListModel.fromJson(Map<String, dynamic> json) =>
      _$DispatchListModelFromJson(json);
}
