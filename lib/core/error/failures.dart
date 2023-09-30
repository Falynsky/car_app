import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<String> get props => <String>[];
}

class ServerFailure extends Failure {}
