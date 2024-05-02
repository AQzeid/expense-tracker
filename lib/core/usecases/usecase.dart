import 'package:expense_tracker/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

// Note This interface is added here because I need to access it also for auth feature if I have time.

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
