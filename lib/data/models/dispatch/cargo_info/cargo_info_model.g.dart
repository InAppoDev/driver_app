// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CargoInfoModelImpl _$$CargoInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$CargoInfoModelImpl(
      commodity: json['commodity'] as String?,
      totalPallets: (json['total_pallets'] as num?)?.toInt(),
      pcs: (json['pcs'] as num?)?.toInt(),
      totalWeight: (json['total_weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CargoInfoModelImplToJson(
        _$CargoInfoModelImpl instance) =>
    <String, dynamic>{
      'commodity': instance.commodity,
      'total_pallets': instance.totalPallets,
      'pcs': instance.pcs,
      'total_weight': instance.totalWeight,
    };
