import 'package:after_exam/API/apiModel.dart';
import 'package:after_exam/API/apiState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'apiEvents.dart';

class APIBloc extends Bloc<ApiEvents, ApiState> {
  APIBloc() : super(ApiState(data: [], status: ApiStatus.initial)) {
    on<ApiCallEvents>(
      (event, emit) async {
        emit(ApiState(data: [], status: ApiStatus.loading));
        var response = await Dio().get('https://jsonplaceholder.typicode.com/todos/');
        List<Data> datas = (response.data as List).map((e) => Data.fromJson(e)).toList();
        emit(ApiState(data: datas, status: ApiStatus.loaded));
      },
    );
  }
}
