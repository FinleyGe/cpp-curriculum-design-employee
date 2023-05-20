import 'dart:developer';

import 'package:employee/api/api.pbgrpc.dart';
import 'package:grpc/grpc.dart';

var stub = EmployeeServiceClient(ClientChannel(
  'localhost',
  port: 50051,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));

void initStub(String address) {
  stub = EmployeeServiceClient(ClientChannel(
    address,
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  ));
  print("stub init");
}

Future<int> addEmployee(Employee e) async {
  try {
    final response = await stub.addEmployee(AddEmployeeRequest(empolyee: e));
    return response.res;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return -100;
}

Future<int> deleteEmployee(String id) async {
  try {
    final response = await stub.deleteEmployee(DeleteEmployeeRequest(id: id));
    return response.res;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return -100;
}

Future<int> updateEmployee(Employee e) async {
  try {
    final response =
        await stub.updateEmployee(UpdateEmployeeRequest(empolyee: e));
    return response.res;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return -100;
}

Future<Employee> searchEmployeeByID(String id) async {
  try {
    final response = await stub.getEmployee(GetEmployeeRequest(id: id));
    return response.empolyee;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return Employee();
}

Future<List<Employee>> searchEmployeeByKeyWords(String s) async {
  try {
    final response = await stub
        .getEmployeeByKeyword(GetEmployeeByKeywordRequest(keyword: s));
    return response.empolyeeList.empolyee;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return [];
}

Future<EducationStatistic> statisticByEducation() async {
  try {
    final response =
        await stub.statisticByEducation(StatisticByEducationRequest());
    return response.educationStatistic;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return EducationStatistic();
}

Future<List<DepartmentStatistic>> statisticByDepartment() async {
  try {
    final response =
        await stub.statisticByDepartment(StatisticByDepartmentRequest());
    return response.departmentStatistic;
  } catch (e) {
    log('Caught error: $e');
  } finally {
    log('请求结束');
  }
  return [];
}

Future<String> test() async {
  final response = await stub.test(TestRequest(request: "test"));
  return response.response;
}
