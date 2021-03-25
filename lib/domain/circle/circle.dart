import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectcircles/domain/circle/user.dart';

part 'circle.freezed.dart';

@freezed
abstract class Circle with _$Circle {
  const factory Circle({required User host, required List<User> members}) = _Circle;
}