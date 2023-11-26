import 'package:depreciation_fixed_assets_app/domain/core/errors/failure.dart';

class ServerFailure extends Failure {
  final dynamic errorObject;

  ServerFailure({required this.errorObject});
}
