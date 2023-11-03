import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<String> get props => <String>[];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}
