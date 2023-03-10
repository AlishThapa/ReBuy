import 'apiModel.dart';

enum ApiStatus {initial,loading,loaded,error}

class ApiState{
  List<Data> data;
  ApiStatus status;

  ApiState({required this.data, required this.status});
}