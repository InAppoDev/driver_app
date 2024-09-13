import 'package:freezed_annotation/freezed_annotation.dart';

part 'cargo_info_model.freezed.dart';
part 'cargo_info_model.g.dart';

@freezed
class CargoInfoModel with _$CargoInfoModel {
  const factory CargoInfoModel({
    @JsonKey(name: 'commodity') String? commodity,
    @JsonKey(name: 'total_pallets') int? totalPallets,
    @JsonKey(name: 'pcs') int? pcs,
    @JsonKey(name: 'total_weight') int? totalWeight,
  }) = _CargoInfoModel;

  factory CargoInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CargoInfoModelFromJson(json);
}
