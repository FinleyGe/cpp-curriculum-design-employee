///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'api.pb.dart';

class EmployeeServiceClient extends $grpc.Client {
  static final _$addEmployee =
      $grpc.ClientMethod<$0.AddEmployeeRequest, $0.AddEmployeeResponse>(
          '/api.EmployeeService/AddEmployee',
          ($0.AddEmployeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddEmployeeResponse.fromBuffer(value));
  static final _$deleteEmployee =
      $grpc.ClientMethod<$0.DeleteEmployeeRequest, $0.DeleteEmployeeResponse>(
          '/api.EmployeeService/DeleteEmployee',
          ($0.DeleteEmployeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteEmployeeResponse.fromBuffer(value));
  static final _$updateEmployee =
      $grpc.ClientMethod<$0.UpdateEmployeeRequest, $0.UpdateEmployeeResponse>(
          '/api.EmployeeService/UpdateEmployee',
          ($0.UpdateEmployeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateEmployeeResponse.fromBuffer(value));
  static final _$getEmployee =
      $grpc.ClientMethod<$0.GetEmployeeRequest, $0.GetEmployeeResponse>(
          '/api.EmployeeService/GetEmployee',
          ($0.GetEmployeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetEmployeeResponse.fromBuffer(value));
  static final _$getEmployeeByKeyword = $grpc.ClientMethod<
          $0.GetEmployeeByKeywordRequest, $0.GetEmployeeByKeywordResponse>(
      '/api.EmployeeService/GetEmployeeByKeyword',
      ($0.GetEmployeeByKeywordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetEmployeeByKeywordResponse.fromBuffer(value));
  static final _$statisticByDepartment = $grpc.ClientMethod<
          $0.StatisticByDepartmentRequest, $0.StatisticByDepartmentResponse>(
      '/api.EmployeeService/StatisticByDepartment',
      ($0.StatisticByDepartmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StatisticByDepartmentResponse.fromBuffer(value));
  static final _$statisticByEducation = $grpc.ClientMethod<
          $0.StatisticByEducationRequest, $0.StatisticByEducationResponse>(
      '/api.EmployeeService/StatisticByEducation',
      ($0.StatisticByEducationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StatisticByEducationResponse.fromBuffer(value));
  static final _$test = $grpc.ClientMethod<$0.TestRequest, $0.TestResponse>(
      '/api.EmployeeService/Test',
      ($0.TestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TestResponse.fromBuffer(value));

  EmployeeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddEmployeeResponse> addEmployee(
      $0.AddEmployeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteEmployeeResponse> deleteEmployee(
      $0.DeleteEmployeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateEmployeeResponse> updateEmployee(
      $0.UpdateEmployeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetEmployeeResponse> getEmployee(
      $0.GetEmployeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetEmployeeByKeywordResponse> getEmployeeByKeyword(
      $0.GetEmployeeByKeywordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEmployeeByKeyword, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatisticByDepartmentResponse> statisticByDepartment(
      $0.StatisticByDepartmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statisticByDepartment, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatisticByEducationResponse> statisticByEducation(
      $0.StatisticByEducationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statisticByEducation, request, options: options);
  }

  $grpc.ResponseFuture<$0.TestResponse> test($0.TestRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$test, request, options: options);
  }
}

abstract class EmployeeServiceBase extends $grpc.Service {
  $core.String get $name => 'api.EmployeeService';

  EmployeeServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AddEmployeeRequest, $0.AddEmployeeResponse>(
            'AddEmployee',
            addEmployee_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddEmployeeRequest.fromBuffer(value),
            ($0.AddEmployeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteEmployeeRequest,
            $0.DeleteEmployeeResponse>(
        'DeleteEmployee',
        deleteEmployee_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteEmployeeRequest.fromBuffer(value),
        ($0.DeleteEmployeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateEmployeeRequest,
            $0.UpdateEmployeeResponse>(
        'UpdateEmployee',
        updateEmployee_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateEmployeeRequest.fromBuffer(value),
        ($0.UpdateEmployeeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetEmployeeRequest, $0.GetEmployeeResponse>(
            'GetEmployee',
            getEmployee_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetEmployeeRequest.fromBuffer(value),
            ($0.GetEmployeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetEmployeeByKeywordRequest,
            $0.GetEmployeeByKeywordResponse>(
        'GetEmployeeByKeyword',
        getEmployeeByKeyword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetEmployeeByKeywordRequest.fromBuffer(value),
        ($0.GetEmployeeByKeywordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatisticByDepartmentRequest,
            $0.StatisticByDepartmentResponse>(
        'StatisticByDepartment',
        statisticByDepartment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.StatisticByDepartmentRequest.fromBuffer(value),
        ($0.StatisticByDepartmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatisticByEducationRequest,
            $0.StatisticByEducationResponse>(
        'StatisticByEducation',
        statisticByEducation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.StatisticByEducationRequest.fromBuffer(value),
        ($0.StatisticByEducationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TestRequest, $0.TestResponse>(
        'Test',
        test_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TestRequest.fromBuffer(value),
        ($0.TestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddEmployeeResponse> addEmployee_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddEmployeeRequest> request) async {
    return addEmployee(call, await request);
  }

  $async.Future<$0.DeleteEmployeeResponse> deleteEmployee_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteEmployeeRequest> request) async {
    return deleteEmployee(call, await request);
  }

  $async.Future<$0.UpdateEmployeeResponse> updateEmployee_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateEmployeeRequest> request) async {
    return updateEmployee(call, await request);
  }

  $async.Future<$0.GetEmployeeResponse> getEmployee_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetEmployeeRequest> request) async {
    return getEmployee(call, await request);
  }

  $async.Future<$0.GetEmployeeByKeywordResponse> getEmployeeByKeyword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetEmployeeByKeywordRequest> request) async {
    return getEmployeeByKeyword(call, await request);
  }

  $async.Future<$0.StatisticByDepartmentResponse> statisticByDepartment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StatisticByDepartmentRequest> request) async {
    return statisticByDepartment(call, await request);
  }

  $async.Future<$0.StatisticByEducationResponse> statisticByEducation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StatisticByEducationRequest> request) async {
    return statisticByEducation(call, await request);
  }

  $async.Future<$0.TestResponse> test_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TestRequest> request) async {
    return test(call, await request);
  }

  $async.Future<$0.AddEmployeeResponse> addEmployee(
      $grpc.ServiceCall call, $0.AddEmployeeRequest request);
  $async.Future<$0.DeleteEmployeeResponse> deleteEmployee(
      $grpc.ServiceCall call, $0.DeleteEmployeeRequest request);
  $async.Future<$0.UpdateEmployeeResponse> updateEmployee(
      $grpc.ServiceCall call, $0.UpdateEmployeeRequest request);
  $async.Future<$0.GetEmployeeResponse> getEmployee(
      $grpc.ServiceCall call, $0.GetEmployeeRequest request);
  $async.Future<$0.GetEmployeeByKeywordResponse> getEmployeeByKeyword(
      $grpc.ServiceCall call, $0.GetEmployeeByKeywordRequest request);
  $async.Future<$0.StatisticByDepartmentResponse> statisticByDepartment(
      $grpc.ServiceCall call, $0.StatisticByDepartmentRequest request);
  $async.Future<$0.StatisticByEducationResponse> statisticByEducation(
      $grpc.ServiceCall call, $0.StatisticByEducationRequest request);
  $async.Future<$0.TestResponse> test(
      $grpc.ServiceCall call, $0.TestRequest request);
}
