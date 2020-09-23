import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/core/errors.dart';
import 'package:projectcircles/domain/core/failures.dart';
import 'package:projectcircles/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String input) => UniqueId._(right(input));

  const UniqueId._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  
  factory Name(String input) {
    assert(input!=null);
    return Name._(validateName(input));
  }

  const Name._(this.value);
}

