
import 'package:dartz/dartz.dart';

extension EitherExt<L, R> on Either {
  bool get isFailed => isLeft();
}
