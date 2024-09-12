import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_details_model.freezed.dart';
part 'location_details_model.g.dart';

@freezed
class LocationDetailsModel with _$LocationDetailsModel {
  const factory LocationDetailsModel({
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'phone_1') required String phone1,
    @JsonKey(name: 'contact_person') required String contactPerson,
    @JsonKey(name: 'directions') required String directions,
  }) = _LocationDetailsModel;

  factory LocationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsModelFromJson(json);
}
