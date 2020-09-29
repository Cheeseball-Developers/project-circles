import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length>50) {
    return left(ValueFailure.exceedingLength(failedValue: input));
  } else if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  return right(input);
}