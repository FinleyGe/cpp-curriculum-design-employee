///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use employeeDescriptor instead')
const Employee$json = const {
  '1': 'Employee',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'college', '3': 4, '4': 1, '5': 9, '10': 'college'},
    const {'1': 'department', '3': 5, '4': 1, '5': 9, '10': 'department'},
    const {'1': 'education', '3': 6, '4': 1, '5': 5, '10': 'education'},
  ],
};

/// Descriptor for `Employee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeDescriptor = $convert.base64Decode('CghFbXBsb3llZRISCgRuYW1lGAEgASgJUgRuYW1lEg4KAmlkGAIgASgJUgJpZBIUCgVwaG9uZRgDIAEoCVIFcGhvbmUSGAoHY29sbGVnZRgEIAEoCVIHY29sbGVnZRIeCgpkZXBhcnRtZW50GAUgASgJUgpkZXBhcnRtZW50EhwKCWVkdWNhdGlvbhgGIAEoBVIJZWR1Y2F0aW9u');
@$core.Deprecated('Use departmentStatisticDescriptor instead')
const DepartmentStatistic$json = const {
  '1': 'DepartmentStatistic',
  '2': const [
    const {'1': 'department', '3': 1, '4': 1, '5': 9, '10': 'department'},
    const {'1': 'bachelor', '3': 2, '4': 1, '5': 5, '10': 'bachelor'},
    const {'1': 'master', '3': 3, '4': 1, '5': 5, '10': 'master'},
    const {'1': 'doctor', '3': 4, '4': 1, '5': 5, '10': 'doctor'},
  ],
};

/// Descriptor for `DepartmentStatistic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List departmentStatisticDescriptor = $convert.base64Decode('ChNEZXBhcnRtZW50U3RhdGlzdGljEh4KCmRlcGFydG1lbnQYASABKAlSCmRlcGFydG1lbnQSGgoIYmFjaGVsb3IYAiABKAVSCGJhY2hlbG9yEhYKBm1hc3RlchgDIAEoBVIGbWFzdGVyEhYKBmRvY3RvchgEIAEoBVIGZG9jdG9y');
@$core.Deprecated('Use educationStatisticDescriptor instead')
const EducationStatistic$json = const {
  '1': 'EducationStatistic',
  '2': const [
    const {'1': 'bachelor', '3': 1, '4': 1, '5': 5, '10': 'bachelor'},
    const {'1': 'master', '3': 2, '4': 1, '5': 5, '10': 'master'},
    const {'1': 'doctor', '3': 3, '4': 1, '5': 5, '10': 'doctor'},
  ],
};

/// Descriptor for `EducationStatistic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List educationStatisticDescriptor = $convert.base64Decode('ChJFZHVjYXRpb25TdGF0aXN0aWMSGgoIYmFjaGVsb3IYASABKAVSCGJhY2hlbG9yEhYKBm1hc3RlchgCIAEoBVIGbWFzdGVyEhYKBmRvY3RvchgDIAEoBVIGZG9jdG9y');
@$core.Deprecated('Use employeeListDescriptor instead')
const EmployeeList$json = const {
  '1': 'EmployeeList',
  '2': const [
    const {'1': 'empolyee', '3': 1, '4': 3, '5': 11, '6': '.api.Employee', '10': 'empolyee'},
  ],
};

/// Descriptor for `EmployeeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeListDescriptor = $convert.base64Decode('CgxFbXBsb3llZUxpc3QSKQoIZW1wb2x5ZWUYASADKAsyDS5hcGkuRW1wbG95ZWVSCGVtcG9seWVl');
@$core.Deprecated('Use addEmployeeRequestDescriptor instead')
const AddEmployeeRequest$json = const {
  '1': 'AddEmployeeRequest',
  '2': const [
    const {'1': 'empolyee', '3': 1, '4': 1, '5': 11, '6': '.api.Employee', '10': 'empolyee'},
  ],
};

/// Descriptor for `AddEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addEmployeeRequestDescriptor = $convert.base64Decode('ChJBZGRFbXBsb3llZVJlcXVlc3QSKQoIZW1wb2x5ZWUYASABKAsyDS5hcGkuRW1wbG95ZWVSCGVtcG9seWVl');
@$core.Deprecated('Use addEmployeeResponseDescriptor instead')
const AddEmployeeResponse$json = const {
  '1': 'AddEmployeeResponse',
  '2': const [
    const {'1': 'res', '3': 1, '4': 1, '5': 5, '10': 'res'},
  ],
};

/// Descriptor for `AddEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addEmployeeResponseDescriptor = $convert.base64Decode('ChNBZGRFbXBsb3llZVJlc3BvbnNlEhAKA3JlcxgBIAEoBVIDcmVz');
@$core.Deprecated('Use deleteEmployeeRequestDescriptor instead')
const DeleteEmployeeRequest$json = const {
  '1': 'DeleteEmployeeRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmployeeRequestDescriptor = $convert.base64Decode('ChVEZWxldGVFbXBsb3llZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use deleteEmployeeResponseDescriptor instead')
const DeleteEmployeeResponse$json = const {
  '1': 'DeleteEmployeeResponse',
  '2': const [
    const {'1': 'res', '3': 1, '4': 1, '5': 5, '10': 'res'},
  ],
};

/// Descriptor for `DeleteEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmployeeResponseDescriptor = $convert.base64Decode('ChZEZWxldGVFbXBsb3llZVJlc3BvbnNlEhAKA3JlcxgBIAEoBVIDcmVz');
@$core.Deprecated('Use updateEmployeeRequestDescriptor instead')
const UpdateEmployeeRequest$json = const {
  '1': 'UpdateEmployeeRequest',
  '2': const [
    const {'1': 'empolyee', '3': 1, '4': 1, '5': 11, '6': '.api.Employee', '10': 'empolyee'},
  ],
};

/// Descriptor for `UpdateEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmployeeRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVFbXBsb3llZVJlcXVlc3QSKQoIZW1wb2x5ZWUYASABKAsyDS5hcGkuRW1wbG95ZWVSCGVtcG9seWVl');
@$core.Deprecated('Use updateEmployeeResponseDescriptor instead')
const UpdateEmployeeResponse$json = const {
  '1': 'UpdateEmployeeResponse',
  '2': const [
    const {'1': 'res', '3': 1, '4': 1, '5': 5, '10': 'res'},
  ],
};

/// Descriptor for `UpdateEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmployeeResponseDescriptor = $convert.base64Decode('ChZVcGRhdGVFbXBsb3llZVJlc3BvbnNlEhAKA3JlcxgBIAEoBVIDcmVz');
@$core.Deprecated('Use getEmployeeRequestDescriptor instead')
const GetEmployeeRequest$json = const {
  '1': 'GetEmployeeRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeeRequestDescriptor = $convert.base64Decode('ChJHZXRFbXBsb3llZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getEmployeeResponseDescriptor instead')
const GetEmployeeResponse$json = const {
  '1': 'GetEmployeeResponse',
  '2': const [
    const {'1': 'empolyee', '3': 1, '4': 1, '5': 11, '6': '.api.Employee', '10': 'empolyee'},
  ],
};

/// Descriptor for `GetEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeeResponseDescriptor = $convert.base64Decode('ChNHZXRFbXBsb3llZVJlc3BvbnNlEikKCGVtcG9seWVlGAEgASgLMg0uYXBpLkVtcGxveWVlUghlbXBvbHllZQ==');
@$core.Deprecated('Use getEmployeeByKeywordRequestDescriptor instead')
const GetEmployeeByKeywordRequest$json = const {
  '1': 'GetEmployeeByKeywordRequest',
  '2': const [
    const {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `GetEmployeeByKeywordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeeByKeywordRequestDescriptor = $convert.base64Decode('ChtHZXRFbXBsb3llZUJ5S2V5d29yZFJlcXVlc3QSGAoHa2V5d29yZBgBIAEoCVIHa2V5d29yZA==');
@$core.Deprecated('Use getEmployeeByKeywordResponseDescriptor instead')
const GetEmployeeByKeywordResponse$json = const {
  '1': 'GetEmployeeByKeywordResponse',
  '2': const [
    const {'1': 'empolyeeList', '3': 1, '4': 1, '5': 11, '6': '.api.EmployeeList', '10': 'empolyeeList'},
  ],
};

/// Descriptor for `GetEmployeeByKeywordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeeByKeywordResponseDescriptor = $convert.base64Decode('ChxHZXRFbXBsb3llZUJ5S2V5d29yZFJlc3BvbnNlEjUKDGVtcG9seWVlTGlzdBgBIAEoCzIRLmFwaS5FbXBsb3llZUxpc3RSDGVtcG9seWVlTGlzdA==');
@$core.Deprecated('Use statisticByDepartmentRequestDescriptor instead')
const StatisticByDepartmentRequest$json = const {
  '1': 'StatisticByDepartmentRequest',
};

/// Descriptor for `StatisticByDepartmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticByDepartmentRequestDescriptor = $convert.base64Decode('ChxTdGF0aXN0aWNCeURlcGFydG1lbnRSZXF1ZXN0');
@$core.Deprecated('Use statisticByDepartmentResponseDescriptor instead')
const StatisticByDepartmentResponse$json = const {
  '1': 'StatisticByDepartmentResponse',
  '2': const [
    const {'1': 'departmentStatistic', '3': 1, '4': 3, '5': 11, '6': '.api.DepartmentStatistic', '10': 'departmentStatistic'},
  ],
};

/// Descriptor for `StatisticByDepartmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticByDepartmentResponseDescriptor = $convert.base64Decode('Ch1TdGF0aXN0aWNCeURlcGFydG1lbnRSZXNwb25zZRJKChNkZXBhcnRtZW50U3RhdGlzdGljGAEgAygLMhguYXBpLkRlcGFydG1lbnRTdGF0aXN0aWNSE2RlcGFydG1lbnRTdGF0aXN0aWM=');
@$core.Deprecated('Use statisticByEducationRequestDescriptor instead')
const StatisticByEducationRequest$json = const {
  '1': 'StatisticByEducationRequest',
};

/// Descriptor for `StatisticByEducationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticByEducationRequestDescriptor = $convert.base64Decode('ChtTdGF0aXN0aWNCeUVkdWNhdGlvblJlcXVlc3Q=');
@$core.Deprecated('Use statisticByEducationResponseDescriptor instead')
const StatisticByEducationResponse$json = const {
  '1': 'StatisticByEducationResponse',
  '2': const [
    const {'1': 'educationStatistic', '3': 1, '4': 1, '5': 11, '6': '.api.EducationStatistic', '10': 'educationStatistic'},
  ],
};

/// Descriptor for `StatisticByEducationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticByEducationResponseDescriptor = $convert.base64Decode('ChxTdGF0aXN0aWNCeUVkdWNhdGlvblJlc3BvbnNlEkcKEmVkdWNhdGlvblN0YXRpc3RpYxgBIAEoCzIXLmFwaS5FZHVjYXRpb25TdGF0aXN0aWNSEmVkdWNhdGlvblN0YXRpc3RpYw==');
@$core.Deprecated('Use testRequestDescriptor instead')
const TestRequest$json = const {
  '1': 'TestRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 9, '10': 'request'},
  ],
};

/// Descriptor for `TestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testRequestDescriptor = $convert.base64Decode('CgtUZXN0UmVxdWVzdBIYCgdyZXF1ZXN0GAEgASgJUgdyZXF1ZXN0');
@$core.Deprecated('Use testResponseDescriptor instead')
const TestResponse$json = const {
  '1': 'TestResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `TestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testResponseDescriptor = $convert.base64Decode('CgxUZXN0UmVzcG9uc2USGgoIcmVzcG9uc2UYASABKAlSCHJlc3BvbnNl');
