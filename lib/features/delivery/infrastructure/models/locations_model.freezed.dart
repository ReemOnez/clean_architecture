// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationsModel _$LocationsModelFromJson(Map<String, dynamic> json) {
  return _Locations.fromJson(json);
}

/// @nodoc
mixin _$LocationsModel {
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  int get deliveryOrder => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsModelCopyWith<LocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsModelCopyWith<$Res> {
  factory $LocationsModelCopyWith(
          LocationsModel value, $Res Function(LocationsModel) then) =
      _$LocationsModelCopyWithImpl<$Res, LocationsModel>;
  @useResult
  $Res call(
      {String address,
      String name,
      String latitude,
      String longitude,
      int deliveryOrder,
      String contact,
      String content,
      String route,
      String weight});
}

/// @nodoc
class _$LocationsModelCopyWithImpl<$Res, $Val extends LocationsModel>
    implements $LocationsModelCopyWith<$Res> {
  _$LocationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? deliveryOrder = null,
    Object? contact = null,
    Object? content = null,
    Object? route = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryOrder: null == deliveryOrder
          ? _value.deliveryOrder
          : deliveryOrder // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationsImplCopyWith<$Res>
    implements $LocationsModelCopyWith<$Res> {
  factory _$$LocationsImplCopyWith(
          _$LocationsImpl value, $Res Function(_$LocationsImpl) then) =
      __$$LocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String name,
      String latitude,
      String longitude,
      int deliveryOrder,
      String contact,
      String content,
      String route,
      String weight});
}

/// @nodoc
class __$$LocationsImplCopyWithImpl<$Res>
    extends _$LocationsModelCopyWithImpl<$Res, _$LocationsImpl>
    implements _$$LocationsImplCopyWith<$Res> {
  __$$LocationsImplCopyWithImpl(
      _$LocationsImpl _value, $Res Function(_$LocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? deliveryOrder = null,
    Object? contact = null,
    Object? content = null,
    Object? route = null,
    Object? weight = null,
  }) {
    return _then(_$LocationsImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryOrder: null == deliveryOrder
          ? _value.deliveryOrder
          : deliveryOrder // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LocationsImpl implements _Locations {
  const _$LocationsImpl(
      {required this.address,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.deliveryOrder,
      required this.contact,
      required this.content,
      required this.route,
      required this.weight});

  factory _$LocationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsImplFromJson(json);

  @override
  final String address;
  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final int deliveryOrder;
  @override
  final String contact;
  @override
  final String content;
  @override
  final String route;
  @override
  final String weight;

  @override
  String toString() {
    return 'LocationsModel(address: $address, name: $name, latitude: $latitude, longitude: $longitude, deliveryOrder: $deliveryOrder, contact: $contact, content: $content, route: $route, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deliveryOrder, deliveryOrder) ||
                other.deliveryOrder == deliveryOrder) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, name, latitude,
      longitude, deliveryOrder, contact, content, route, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      __$$LocationsImplCopyWithImpl<_$LocationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsImplToJson(
      this,
    );
  }
}

abstract class _Locations implements LocationsModel {
  const factory _Locations(
      {required final String address,
      required final String name,
      required final String latitude,
      required final String longitude,
      required final int deliveryOrder,
      required final String contact,
      required final String content,
      required final String route,
      required final String weight}) = _$LocationsImpl;

  factory _Locations.fromJson(Map<String, dynamic> json) =
      _$LocationsImpl.fromJson;

  @override
  String get address;
  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  int get deliveryOrder;
  @override
  String get contact;
  @override
  String get content;
  @override
  String get route;
  @override
  String get weight;
  @override
  @JsonKey(ignore: true)
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
