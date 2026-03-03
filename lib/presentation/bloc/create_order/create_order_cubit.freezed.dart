// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateOrderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderState()';
}


}

/// @nodoc
class $CreateOrderStateCopyWith<$Res>  {
$CreateOrderStateCopyWith(CreateOrderState _, $Res Function(CreateOrderState) __);
}


/// Adds pattern-matching-related methods to [CreateOrderState].
extension CreateOrderStatePatterns on CreateOrderState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateOrderStateLoading value)?  loading,TResult Function( CreateOrderStateError value)?  error,TResult Function( CreateOrderStateInitial value)?  initial,TResult Function( CreateOrderStateSector value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateOrderStateLoading() when loading != null:
return loading(_that);case CreateOrderStateError() when error != null:
return error(_that);case CreateOrderStateInitial() when initial != null:
return initial(_that);case CreateOrderStateSector() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateOrderStateLoading value)  loading,required TResult Function( CreateOrderStateError value)  error,required TResult Function( CreateOrderStateInitial value)  initial,required TResult Function( CreateOrderStateSector value)  success,}){
final _that = this;
switch (_that) {
case CreateOrderStateLoading():
return loading(_that);case CreateOrderStateError():
return error(_that);case CreateOrderStateInitial():
return initial(_that);case CreateOrderStateSector():
return success(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateOrderStateLoading value)?  loading,TResult? Function( CreateOrderStateError value)?  error,TResult? Function( CreateOrderStateInitial value)?  initial,TResult? Function( CreateOrderStateSector value)?  success,}){
final _that = this;
switch (_that) {
case CreateOrderStateLoading() when loading != null:
return loading(_that);case CreateOrderStateError() when error != null:
return error(_that);case CreateOrderStateInitial() when initial != null:
return initial(_that);case CreateOrderStateSector() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String message)?  error,TResult Function()?  initial,TResult Function( OrderEntity entity)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateOrderStateLoading() when loading != null:
return loading();case CreateOrderStateError() when error != null:
return error(_that.message);case CreateOrderStateInitial() when initial != null:
return initial();case CreateOrderStateSector() when success != null:
return success(_that.entity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function()  initial,required TResult Function( OrderEntity entity)  success,}) {final _that = this;
switch (_that) {
case CreateOrderStateLoading():
return loading();case CreateOrderStateError():
return error(_that.message);case CreateOrderStateInitial():
return initial();case CreateOrderStateSector():
return success(_that.entity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function()?  initial,TResult? Function( OrderEntity entity)?  success,}) {final _that = this;
switch (_that) {
case CreateOrderStateLoading() when loading != null:
return loading();case CreateOrderStateError() when error != null:
return error(_that.message);case CreateOrderStateInitial() when initial != null:
return initial();case CreateOrderStateSector() when success != null:
return success(_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class CreateOrderStateLoading implements CreateOrderState {
  const CreateOrderStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderState.loading()';
}


}




/// @nodoc


class CreateOrderStateError implements CreateOrderState {
  const CreateOrderStateError(this.message);
  

 final  String message;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderStateErrorCopyWith<CreateOrderStateError> get copyWith => _$CreateOrderStateErrorCopyWithImpl<CreateOrderStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateOrderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateOrderStateErrorCopyWith<$Res> implements $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateErrorCopyWith(CreateOrderStateError value, $Res Function(CreateOrderStateError) _then) = _$CreateOrderStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateOrderStateErrorCopyWithImpl<$Res>
    implements $CreateOrderStateErrorCopyWith<$Res> {
  _$CreateOrderStateErrorCopyWithImpl(this._self, this._then);

  final CreateOrderStateError _self;
  final $Res Function(CreateOrderStateError) _then;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreateOrderStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateOrderStateInitial implements CreateOrderState {
  const CreateOrderStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderState.initial()';
}


}




/// @nodoc


class CreateOrderStateSector implements CreateOrderState {
  const CreateOrderStateSector({required this.entity});
  

 final  OrderEntity entity;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderStateSectorCopyWith<CreateOrderStateSector> get copyWith => _$CreateOrderStateSectorCopyWithImpl<CreateOrderStateSector>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderStateSector&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'CreateOrderState.success(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $CreateOrderStateSectorCopyWith<$Res> implements $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateSectorCopyWith(CreateOrderStateSector value, $Res Function(CreateOrderStateSector) _then) = _$CreateOrderStateSectorCopyWithImpl;
@useResult
$Res call({
 OrderEntity entity
});


$OrderEntityCopyWith<$Res> get entity;

}
/// @nodoc
class _$CreateOrderStateSectorCopyWithImpl<$Res>
    implements $CreateOrderStateSectorCopyWith<$Res> {
  _$CreateOrderStateSectorCopyWithImpl(this._self, this._then);

  final CreateOrderStateSector _self;
  final $Res Function(CreateOrderStateSector) _then;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(CreateOrderStateSector(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as OrderEntity,
  ));
}

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res> get entity {
  
  return $OrderEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

// dart format on
