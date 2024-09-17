// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waypoint_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaypointDetailModel _$WaypointDetailModelFromJson(Map<String, dynamic> json) {
  return _WaypointDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WaypointDetailModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_title')
  String get typeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String get stateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_code')
  String get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'appt_from_timestamp')
  int? get apptFromTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'appt_to_timestamp')
  int? get apptToTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_info')
  CargoInfoModel get cargoInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_highlight')
  String get statusHighlight => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fcfs')
  bool get isFcfs => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipment_reference')
  String? get shipmentReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_details')
  LocationDetailsModel get locationDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this WaypointDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaypointDetailModelCopyWith<WaypointDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaypointDetailModelCopyWith<$Res> {
  factory $WaypointDetailModelCopyWith(
          WaypointDetailModel value, $Res Function(WaypointDetailModel) then) =
      _$WaypointDetailModelCopyWithImpl<$Res, WaypointDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'type_title') String typeTitle,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state_code') String stateCode,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'appt_from_timestamp') int? apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp,
      @JsonKey(name: 'cargo_info') CargoInfoModel cargoInfo,
      @JsonKey(name: 'status_highlight') String statusHighlight,
      @JsonKey(name: 'is_fcfs') bool isFcfs,
      @JsonKey(name: 'shipment_reference') String? shipmentReference,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'location_details') LocationDetailsModel locationDetails});

  $CargoInfoModelCopyWith<$Res> get cargoInfo;
  $LocationDetailsModelCopyWith<$Res> get locationDetails;
}

/// @nodoc
class _$WaypointDetailModelCopyWithImpl<$Res, $Val extends WaypointDetailModel>
    implements $WaypointDetailModelCopyWith<$Res> {
  _$WaypointDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeTitle = null,
    Object? address = null,
    Object? city = null,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? apptFromTimestamp = freezed,
    Object? apptToTimestamp = freezed,
    Object? cargoInfo = null,
    Object? statusHighlight = null,
    Object? isFcfs = null,
    Object? shipmentReference = freezed,
    Object? notes = freezed,
    Object? locationDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      apptFromTimestamp: freezed == apptFromTimestamp
          ? _value.apptFromTimestamp
          : apptFromTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      apptToTimestamp: freezed == apptToTimestamp
          ? _value.apptToTimestamp
          : apptToTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      cargoInfo: null == cargoInfo
          ? _value.cargoInfo
          : cargoInfo // ignore: cast_nullable_to_non_nullable
              as CargoInfoModel,
      statusHighlight: null == statusHighlight
          ? _value.statusHighlight
          : statusHighlight // ignore: cast_nullable_to_non_nullable
              as String,
      isFcfs: null == isFcfs
          ? _value.isFcfs
          : isFcfs // ignore: cast_nullable_to_non_nullable
              as bool,
      shipmentReference: freezed == shipmentReference
          ? _value.shipmentReference
          : shipmentReference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      locationDetails: null == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as LocationDetailsModel,
    ) as $Val);
  }

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CargoInfoModelCopyWith<$Res> get cargoInfo {
    return $CargoInfoModelCopyWith<$Res>(_value.cargoInfo, (value) {
      return _then(_value.copyWith(cargoInfo: value) as $Val);
    });
  }

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDetailsModelCopyWith<$Res> get locationDetails {
    return $LocationDetailsModelCopyWith<$Res>(_value.locationDetails, (value) {
      return _then(_value.copyWith(locationDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaypointDetailModelImplCopyWith<$Res>
    implements $WaypointDetailModelCopyWith<$Res> {
  factory _$$WaypointDetailModelImplCopyWith(_$WaypointDetailModelImpl value,
          $Res Function(_$WaypointDetailModelImpl) then) =
      __$$WaypointDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'type_title') String typeTitle,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state_code') String stateCode,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'appt_from_timestamp') int? apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp,
      @JsonKey(name: 'cargo_info') CargoInfoModel cargoInfo,
      @JsonKey(name: 'status_highlight') String statusHighlight,
      @JsonKey(name: 'is_fcfs') bool isFcfs,
      @JsonKey(name: 'shipment_reference') String? shipmentReference,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'location_details') LocationDetailsModel locationDetails});

  @override
  $CargoInfoModelCopyWith<$Res> get cargoInfo;
  @override
  $LocationDetailsModelCopyWith<$Res> get locationDetails;
}

/// @nodoc
class __$$WaypointDetailModelImplCopyWithImpl<$Res>
    extends _$WaypointDetailModelCopyWithImpl<$Res, _$WaypointDetailModelImpl>
    implements _$$WaypointDetailModelImplCopyWith<$Res> {
  __$$WaypointDetailModelImplCopyWithImpl(_$WaypointDetailModelImpl _value,
      $Res Function(_$WaypointDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeTitle = null,
    Object? address = null,
    Object? city = null,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? apptFromTimestamp = freezed,
    Object? apptToTimestamp = freezed,
    Object? cargoInfo = null,
    Object? statusHighlight = null,
    Object? isFcfs = null,
    Object? shipmentReference = freezed,
    Object? notes = freezed,
    Object? locationDetails = null,
  }) {
    return _then(_$WaypointDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      apptFromTimestamp: freezed == apptFromTimestamp
          ? _value.apptFromTimestamp
          : apptFromTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      apptToTimestamp: freezed == apptToTimestamp
          ? _value.apptToTimestamp
          : apptToTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      cargoInfo: null == cargoInfo
          ? _value.cargoInfo
          : cargoInfo // ignore: cast_nullable_to_non_nullable
              as CargoInfoModel,
      statusHighlight: null == statusHighlight
          ? _value.statusHighlight
          : statusHighlight // ignore: cast_nullable_to_non_nullable
              as String,
      isFcfs: null == isFcfs
          ? _value.isFcfs
          : isFcfs // ignore: cast_nullable_to_non_nullable
              as bool,
      shipmentReference: freezed == shipmentReference
          ? _value.shipmentReference
          : shipmentReference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      locationDetails: null == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as LocationDetailsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaypointDetailModelImpl implements _WaypointDetailModel {
  const _$WaypointDetailModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'type_title') required this.typeTitle,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'state_code') required this.stateCode,
      @JsonKey(name: 'zip_code') required this.zipCode,
      @JsonKey(name: 'appt_from_timestamp') this.apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') this.apptToTimestamp,
      @JsonKey(name: 'cargo_info') required this.cargoInfo,
      @JsonKey(name: 'status_highlight') required this.statusHighlight,
      @JsonKey(name: 'is_fcfs') required this.isFcfs,
      @JsonKey(name: 'shipment_reference') this.shipmentReference,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'location_details') required this.locationDetails});

  factory _$WaypointDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaypointDetailModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'type_title')
  final String typeTitle;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'state_code')
  final String stateCode;
  @override
  @JsonKey(name: 'zip_code')
  final String zipCode;
  @override
  @JsonKey(name: 'appt_from_timestamp')
  final int? apptFromTimestamp;
  @override
  @JsonKey(name: 'appt_to_timestamp')
  final int? apptToTimestamp;
  @override
  @JsonKey(name: 'cargo_info')
  final CargoInfoModel cargoInfo;
  @override
  @JsonKey(name: 'status_highlight')
  final String statusHighlight;
  @override
  @JsonKey(name: 'is_fcfs')
  final bool isFcfs;
  @override
  @JsonKey(name: 'shipment_reference')
  final String? shipmentReference;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'location_details')
  final LocationDetailsModel locationDetails;

  @override
  String toString() {
    return 'WaypointDetailModel(id: $id, type: $type, typeTitle: $typeTitle, address: $address, city: $city, stateCode: $stateCode, zipCode: $zipCode, apptFromTimestamp: $apptFromTimestamp, apptToTimestamp: $apptToTimestamp, cargoInfo: $cargoInfo, statusHighlight: $statusHighlight, isFcfs: $isFcfs, shipmentReference: $shipmentReference, notes: $notes, locationDetails: $locationDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaypointDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeTitle, typeTitle) ||
                other.typeTitle == typeTitle) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.apptFromTimestamp, apptFromTimestamp) ||
                other.apptFromTimestamp == apptFromTimestamp) &&
            (identical(other.apptToTimestamp, apptToTimestamp) ||
                other.apptToTimestamp == apptToTimestamp) &&
            (identical(other.cargoInfo, cargoInfo) ||
                other.cargoInfo == cargoInfo) &&
            (identical(other.statusHighlight, statusHighlight) ||
                other.statusHighlight == statusHighlight) &&
            (identical(other.isFcfs, isFcfs) || other.isFcfs == isFcfs) &&
            (identical(other.shipmentReference, shipmentReference) ||
                other.shipmentReference == shipmentReference) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.locationDetails, locationDetails) ||
                other.locationDetails == locationDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      typeTitle,
      address,
      city,
      stateCode,
      zipCode,
      apptFromTimestamp,
      apptToTimestamp,
      cargoInfo,
      statusHighlight,
      isFcfs,
      shipmentReference,
      notes,
      locationDetails);

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaypointDetailModelImplCopyWith<_$WaypointDetailModelImpl> get copyWith =>
      __$$WaypointDetailModelImplCopyWithImpl<_$WaypointDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaypointDetailModelImplToJson(
      this,
    );
  }
}

abstract class _WaypointDetailModel implements WaypointDetailModel {
  const factory _WaypointDetailModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'type_title') required final String typeTitle,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'city') required final String city,
      @JsonKey(name: 'state_code') required final String stateCode,
      @JsonKey(name: 'zip_code') required final String zipCode,
      @JsonKey(name: 'appt_from_timestamp') final int? apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') final int? apptToTimestamp,
      @JsonKey(name: 'cargo_info') required final CargoInfoModel cargoInfo,
      @JsonKey(name: 'status_highlight') required final String statusHighlight,
      @JsonKey(name: 'is_fcfs') required final bool isFcfs,
      @JsonKey(name: 'shipment_reference') final String? shipmentReference,
      @JsonKey(name: 'notes') final String? notes,
      @JsonKey(name: 'location_details')
      required final LocationDetailsModel
          locationDetails}) = _$WaypointDetailModelImpl;

  factory _WaypointDetailModel.fromJson(Map<String, dynamic> json) =
      _$WaypointDetailModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'type_title')
  String get typeTitle;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'state_code')
  String get stateCode;
  @override
  @JsonKey(name: 'zip_code')
  String get zipCode;
  @override
  @JsonKey(name: 'appt_from_timestamp')
  int? get apptFromTimestamp;
  @override
  @JsonKey(name: 'appt_to_timestamp')
  int? get apptToTimestamp;
  @override
  @JsonKey(name: 'cargo_info')
  CargoInfoModel get cargoInfo;
  @override
  @JsonKey(name: 'status_highlight')
  String get statusHighlight;
  @override
  @JsonKey(name: 'is_fcfs')
  bool get isFcfs;
  @override
  @JsonKey(name: 'shipment_reference')
  String? get shipmentReference;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'location_details')
  LocationDetailsModel get locationDetails;

  /// Create a copy of WaypointDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaypointDetailModelImplCopyWith<_$WaypointDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
