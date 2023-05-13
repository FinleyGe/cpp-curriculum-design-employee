///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Employee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Employee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'college')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'department')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'education', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Employee._() : super();
  factory Employee({
    $core.String? name,
    $core.String? id,
    $core.String? phone,
    $core.String? college,
    $core.String? department,
    $core.int? education,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (college != null) {
      _result.college = college;
    }
    if (department != null) {
      _result.department = department;
    }
    if (education != null) {
      _result.education = education;
    }
    return _result;
  }
  factory Employee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Employee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Employee clone() => Employee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Employee copyWith(void Function(Employee) updates) => super.copyWith((message) => updates(message as Employee)) as Employee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Employee create() => Employee._();
  Employee createEmptyInstance() => create();
  static $pb.PbList<Employee> createRepeated() => $pb.PbList<Employee>();
  @$core.pragma('dart2js:noInline')
  static Employee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Employee>(create);
  static Employee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get college => $_getSZ(3);
  @$pb.TagNumber(4)
  set college($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCollege() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollege() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get department => $_getSZ(4);
  @$pb.TagNumber(5)
  set department($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDepartment() => $_has(4);
  @$pb.TagNumber(5)
  void clearDepartment() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get education => $_getIZ(5);
  @$pb.TagNumber(6)
  set education($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEducation() => $_has(5);
  @$pb.TagNumber(6)
  void clearEducation() => clearField(6);
}

class DepartmentStatistic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DepartmentStatistic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'department')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bachelor', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'master', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doctor', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DepartmentStatistic._() : super();
  factory DepartmentStatistic({
    $core.String? department,
    $core.int? bachelor,
    $core.int? master,
    $core.int? doctor,
  }) {
    final _result = create();
    if (department != null) {
      _result.department = department;
    }
    if (bachelor != null) {
      _result.bachelor = bachelor;
    }
    if (master != null) {
      _result.master = master;
    }
    if (doctor != null) {
      _result.doctor = doctor;
    }
    return _result;
  }
  factory DepartmentStatistic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepartmentStatistic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DepartmentStatistic clone() => DepartmentStatistic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DepartmentStatistic copyWith(void Function(DepartmentStatistic) updates) => super.copyWith((message) => updates(message as DepartmentStatistic)) as DepartmentStatistic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DepartmentStatistic create() => DepartmentStatistic._();
  DepartmentStatistic createEmptyInstance() => create();
  static $pb.PbList<DepartmentStatistic> createRepeated() => $pb.PbList<DepartmentStatistic>();
  @$core.pragma('dart2js:noInline')
  static DepartmentStatistic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepartmentStatistic>(create);
  static DepartmentStatistic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get department => $_getSZ(0);
  @$pb.TagNumber(1)
  set department($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDepartment() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepartment() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bachelor => $_getIZ(1);
  @$pb.TagNumber(2)
  set bachelor($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBachelor() => $_has(1);
  @$pb.TagNumber(2)
  void clearBachelor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get master => $_getIZ(2);
  @$pb.TagNumber(3)
  set master($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaster() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaster() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get doctor => $_getIZ(3);
  @$pb.TagNumber(4)
  set doctor($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDoctor() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoctor() => clearField(4);
}

class EducationStatistic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EducationStatistic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bachelor', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'master', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doctor', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EducationStatistic._() : super();
  factory EducationStatistic({
    $core.int? bachelor,
    $core.int? master,
    $core.int? doctor,
  }) {
    final _result = create();
    if (bachelor != null) {
      _result.bachelor = bachelor;
    }
    if (master != null) {
      _result.master = master;
    }
    if (doctor != null) {
      _result.doctor = doctor;
    }
    return _result;
  }
  factory EducationStatistic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EducationStatistic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EducationStatistic clone() => EducationStatistic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EducationStatistic copyWith(void Function(EducationStatistic) updates) => super.copyWith((message) => updates(message as EducationStatistic)) as EducationStatistic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EducationStatistic create() => EducationStatistic._();
  EducationStatistic createEmptyInstance() => create();
  static $pb.PbList<EducationStatistic> createRepeated() => $pb.PbList<EducationStatistic>();
  @$core.pragma('dart2js:noInline')
  static EducationStatistic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EducationStatistic>(create);
  static EducationStatistic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bachelor => $_getIZ(0);
  @$pb.TagNumber(1)
  set bachelor($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBachelor() => $_has(0);
  @$pb.TagNumber(1)
  void clearBachelor() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get master => $_getIZ(1);
  @$pb.TagNumber(2)
  set master($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaster() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaster() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get doctor => $_getIZ(2);
  @$pb.TagNumber(3)
  set doctor($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDoctor() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoctor() => clearField(3);
}

class EmployeeList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmployeeList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..pc<Employee>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empolyee', $pb.PbFieldType.PM, subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  EmployeeList._() : super();
  factory EmployeeList({
    $core.Iterable<Employee>? empolyee,
  }) {
    final _result = create();
    if (empolyee != null) {
      _result.empolyee.addAll(empolyee);
    }
    return _result;
  }
  factory EmployeeList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmployeeList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmployeeList clone() => EmployeeList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmployeeList copyWith(void Function(EmployeeList) updates) => super.copyWith((message) => updates(message as EmployeeList)) as EmployeeList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmployeeList create() => EmployeeList._();
  EmployeeList createEmptyInstance() => create();
  static $pb.PbList<EmployeeList> createRepeated() => $pb.PbList<EmployeeList>();
  @$core.pragma('dart2js:noInline')
  static EmployeeList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmployeeList>(create);
  static EmployeeList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Employee> get empolyee => $_getList(0);
}

class AddEmployeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddEmployeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<Employee>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empolyee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  AddEmployeeRequest._() : super();
  factory AddEmployeeRequest({
    Employee? empolyee,
  }) {
    final _result = create();
    if (empolyee != null) {
      _result.empolyee = empolyee;
    }
    return _result;
  }
  factory AddEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEmployeeRequest clone() => AddEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEmployeeRequest copyWith(void Function(AddEmployeeRequest) updates) => super.copyWith((message) => updates(message as AddEmployeeRequest)) as AddEmployeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddEmployeeRequest create() => AddEmployeeRequest._();
  AddEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<AddEmployeeRequest> createRepeated() => $pb.PbList<AddEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static AddEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEmployeeRequest>(create);
  static AddEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get empolyee => $_getN(0);
  @$pb.TagNumber(1)
  set empolyee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpolyee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpolyee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmpolyee() => $_ensure(0);
}

class AddEmployeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddEmployeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'res', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddEmployeeResponse._() : super();
  factory AddEmployeeResponse({
    $core.int? res,
  }) {
    final _result = create();
    if (res != null) {
      _result.res = res;
    }
    return _result;
  }
  factory AddEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEmployeeResponse clone() => AddEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEmployeeResponse copyWith(void Function(AddEmployeeResponse) updates) => super.copyWith((message) => updates(message as AddEmployeeResponse)) as AddEmployeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddEmployeeResponse create() => AddEmployeeResponse._();
  AddEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<AddEmployeeResponse> createRepeated() => $pb.PbList<AddEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static AddEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEmployeeResponse>(create);
  static AddEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get res => $_getIZ(0);
  @$pb.TagNumber(1)
  set res($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRes() => clearField(1);
}

class DeleteEmployeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteEmployeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteEmployeeRequest._() : super();
  factory DeleteEmployeeRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmployeeRequest clone() => DeleteEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmployeeRequest copyWith(void Function(DeleteEmployeeRequest) updates) => super.copyWith((message) => updates(message as DeleteEmployeeRequest)) as DeleteEmployeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeRequest create() => DeleteEmployeeRequest._();
  DeleteEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEmployeeRequest> createRepeated() => $pb.PbList<DeleteEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmployeeRequest>(create);
  static DeleteEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteEmployeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteEmployeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'res', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeleteEmployeeResponse._() : super();
  factory DeleteEmployeeResponse({
    $core.int? res,
  }) {
    final _result = create();
    if (res != null) {
      _result.res = res;
    }
    return _result;
  }
  factory DeleteEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmployeeResponse clone() => DeleteEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmployeeResponse copyWith(void Function(DeleteEmployeeResponse) updates) => super.copyWith((message) => updates(message as DeleteEmployeeResponse)) as DeleteEmployeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeResponse create() => DeleteEmployeeResponse._();
  DeleteEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteEmployeeResponse> createRepeated() => $pb.PbList<DeleteEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmployeeResponse>(create);
  static DeleteEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get res => $_getIZ(0);
  @$pb.TagNumber(1)
  set res($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRes() => clearField(1);
}

class UpdateEmployeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateEmployeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<Employee>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empolyee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  UpdateEmployeeRequest._() : super();
  factory UpdateEmployeeRequest({
    Employee? empolyee,
  }) {
    final _result = create();
    if (empolyee != null) {
      _result.empolyee = empolyee;
    }
    return _result;
  }
  factory UpdateEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest clone() => UpdateEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest copyWith(void Function(UpdateEmployeeRequest) updates) => super.copyWith((message) => updates(message as UpdateEmployeeRequest)) as UpdateEmployeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest create() => UpdateEmployeeRequest._();
  UpdateEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateEmployeeRequest> createRepeated() => $pb.PbList<UpdateEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmployeeRequest>(create);
  static UpdateEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get empolyee => $_getN(0);
  @$pb.TagNumber(1)
  set empolyee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpolyee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpolyee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmpolyee() => $_ensure(0);
}

class UpdateEmployeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateEmployeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'res', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateEmployeeResponse._() : super();
  factory UpdateEmployeeResponse({
    $core.int? res,
  }) {
    final _result = create();
    if (res != null) {
      _result.res = res;
    }
    return _result;
  }
  factory UpdateEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmployeeResponse clone() => UpdateEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmployeeResponse copyWith(void Function(UpdateEmployeeResponse) updates) => super.copyWith((message) => updates(message as UpdateEmployeeResponse)) as UpdateEmployeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeResponse create() => UpdateEmployeeResponse._();
  UpdateEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateEmployeeResponse> createRepeated() => $pb.PbList<UpdateEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmployeeResponse>(create);
  static UpdateEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get res => $_getIZ(0);
  @$pb.TagNumber(1)
  set res($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRes() => clearField(1);
}

class GetEmployeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEmployeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetEmployeeRequest._() : super();
  factory GetEmployeeRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeeRequest clone() => GetEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeeRequest copyWith(void Function(GetEmployeeRequest) updates) => super.copyWith((message) => updates(message as GetEmployeeRequest)) as GetEmployeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmployeeRequest create() => GetEmployeeRequest._();
  GetEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmployeeRequest> createRepeated() => $pb.PbList<GetEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeeRequest>(create);
  static GetEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetEmployeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEmployeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<Employee>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empolyee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  GetEmployeeResponse._() : super();
  factory GetEmployeeResponse({
    Employee? empolyee,
  }) {
    final _result = create();
    if (empolyee != null) {
      _result.empolyee = empolyee;
    }
    return _result;
  }
  factory GetEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeeResponse clone() => GetEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeeResponse copyWith(void Function(GetEmployeeResponse) updates) => super.copyWith((message) => updates(message as GetEmployeeResponse)) as GetEmployeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmployeeResponse create() => GetEmployeeResponse._();
  GetEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<GetEmployeeResponse> createRepeated() => $pb.PbList<GetEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeeResponse>(create);
  static GetEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get empolyee => $_getN(0);
  @$pb.TagNumber(1)
  set empolyee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpolyee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpolyee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmpolyee() => $_ensure(0);
}

class GetEmployeeByKeywordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEmployeeByKeywordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  GetEmployeeByKeywordRequest._() : super();
  factory GetEmployeeByKeywordRequest({
    $core.String? keyword,
  }) {
    final _result = create();
    if (keyword != null) {
      _result.keyword = keyword;
    }
    return _result;
  }
  factory GetEmployeeByKeywordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeeByKeywordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeeByKeywordRequest clone() => GetEmployeeByKeywordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeeByKeywordRequest copyWith(void Function(GetEmployeeByKeywordRequest) updates) => super.copyWith((message) => updates(message as GetEmployeeByKeywordRequest)) as GetEmployeeByKeywordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmployeeByKeywordRequest create() => GetEmployeeByKeywordRequest._();
  GetEmployeeByKeywordRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmployeeByKeywordRequest> createRepeated() => $pb.PbList<GetEmployeeByKeywordRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeeByKeywordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeeByKeywordRequest>(create);
  static GetEmployeeByKeywordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);
}

class GetEmployeeByKeywordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEmployeeByKeywordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<EmployeeList>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'empolyeeList', protoName: 'empolyeeList', subBuilder: EmployeeList.create)
    ..hasRequiredFields = false
  ;

  GetEmployeeByKeywordResponse._() : super();
  factory GetEmployeeByKeywordResponse({
    EmployeeList? empolyeeList,
  }) {
    final _result = create();
    if (empolyeeList != null) {
      _result.empolyeeList = empolyeeList;
    }
    return _result;
  }
  factory GetEmployeeByKeywordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeeByKeywordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeeByKeywordResponse clone() => GetEmployeeByKeywordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeeByKeywordResponse copyWith(void Function(GetEmployeeByKeywordResponse) updates) => super.copyWith((message) => updates(message as GetEmployeeByKeywordResponse)) as GetEmployeeByKeywordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEmployeeByKeywordResponse create() => GetEmployeeByKeywordResponse._();
  GetEmployeeByKeywordResponse createEmptyInstance() => create();
  static $pb.PbList<GetEmployeeByKeywordResponse> createRepeated() => $pb.PbList<GetEmployeeByKeywordResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeeByKeywordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeeByKeywordResponse>(create);
  static GetEmployeeByKeywordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  EmployeeList get empolyeeList => $_getN(0);
  @$pb.TagNumber(1)
  set empolyeeList(EmployeeList v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmpolyeeList() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmpolyeeList() => clearField(1);
  @$pb.TagNumber(1)
  EmployeeList ensureEmpolyeeList() => $_ensure(0);
}

class StatisticByDepartmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatisticByDepartmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StatisticByDepartmentRequest._() : super();
  factory StatisticByDepartmentRequest() => create();
  factory StatisticByDepartmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticByDepartmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticByDepartmentRequest clone() => StatisticByDepartmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticByDepartmentRequest copyWith(void Function(StatisticByDepartmentRequest) updates) => super.copyWith((message) => updates(message as StatisticByDepartmentRequest)) as StatisticByDepartmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatisticByDepartmentRequest create() => StatisticByDepartmentRequest._();
  StatisticByDepartmentRequest createEmptyInstance() => create();
  static $pb.PbList<StatisticByDepartmentRequest> createRepeated() => $pb.PbList<StatisticByDepartmentRequest>();
  @$core.pragma('dart2js:noInline')
  static StatisticByDepartmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticByDepartmentRequest>(create);
  static StatisticByDepartmentRequest? _defaultInstance;
}

class StatisticByDepartmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatisticByDepartmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..pc<DepartmentStatistic>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'departmentStatistic', $pb.PbFieldType.PM, protoName: 'departmentStatistic', subBuilder: DepartmentStatistic.create)
    ..hasRequiredFields = false
  ;

  StatisticByDepartmentResponse._() : super();
  factory StatisticByDepartmentResponse({
    $core.Iterable<DepartmentStatistic>? departmentStatistic,
  }) {
    final _result = create();
    if (departmentStatistic != null) {
      _result.departmentStatistic.addAll(departmentStatistic);
    }
    return _result;
  }
  factory StatisticByDepartmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticByDepartmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticByDepartmentResponse clone() => StatisticByDepartmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticByDepartmentResponse copyWith(void Function(StatisticByDepartmentResponse) updates) => super.copyWith((message) => updates(message as StatisticByDepartmentResponse)) as StatisticByDepartmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatisticByDepartmentResponse create() => StatisticByDepartmentResponse._();
  StatisticByDepartmentResponse createEmptyInstance() => create();
  static $pb.PbList<StatisticByDepartmentResponse> createRepeated() => $pb.PbList<StatisticByDepartmentResponse>();
  @$core.pragma('dart2js:noInline')
  static StatisticByDepartmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticByDepartmentResponse>(create);
  static StatisticByDepartmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DepartmentStatistic> get departmentStatistic => $_getList(0);
}

class StatisticByEducationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatisticByEducationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StatisticByEducationRequest._() : super();
  factory StatisticByEducationRequest() => create();
  factory StatisticByEducationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticByEducationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticByEducationRequest clone() => StatisticByEducationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticByEducationRequest copyWith(void Function(StatisticByEducationRequest) updates) => super.copyWith((message) => updates(message as StatisticByEducationRequest)) as StatisticByEducationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatisticByEducationRequest create() => StatisticByEducationRequest._();
  StatisticByEducationRequest createEmptyInstance() => create();
  static $pb.PbList<StatisticByEducationRequest> createRepeated() => $pb.PbList<StatisticByEducationRequest>();
  @$core.pragma('dart2js:noInline')
  static StatisticByEducationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticByEducationRequest>(create);
  static StatisticByEducationRequest? _defaultInstance;
}

class StatisticByEducationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatisticByEducationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<EducationStatistic>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'educationStatistic', protoName: 'educationStatistic', subBuilder: EducationStatistic.create)
    ..hasRequiredFields = false
  ;

  StatisticByEducationResponse._() : super();
  factory StatisticByEducationResponse({
    EducationStatistic? educationStatistic,
  }) {
    final _result = create();
    if (educationStatistic != null) {
      _result.educationStatistic = educationStatistic;
    }
    return _result;
  }
  factory StatisticByEducationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticByEducationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticByEducationResponse clone() => StatisticByEducationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticByEducationResponse copyWith(void Function(StatisticByEducationResponse) updates) => super.copyWith((message) => updates(message as StatisticByEducationResponse)) as StatisticByEducationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatisticByEducationResponse create() => StatisticByEducationResponse._();
  StatisticByEducationResponse createEmptyInstance() => create();
  static $pb.PbList<StatisticByEducationResponse> createRepeated() => $pb.PbList<StatisticByEducationResponse>();
  @$core.pragma('dart2js:noInline')
  static StatisticByEducationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticByEducationResponse>(create);
  static StatisticByEducationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  EducationStatistic get educationStatistic => $_getN(0);
  @$pb.TagNumber(1)
  set educationStatistic(EducationStatistic v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEducationStatistic() => $_has(0);
  @$pb.TagNumber(1)
  void clearEducationStatistic() => clearField(1);
  @$pb.TagNumber(1)
  EducationStatistic ensureEducationStatistic() => $_ensure(0);
}

class TestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request')
    ..hasRequiredFields = false
  ;

  TestRequest._() : super();
  factory TestRequest({
    $core.String? request,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    return _result;
  }
  factory TestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestRequest clone() => TestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestRequest copyWith(void Function(TestRequest) updates) => super.copyWith((message) => updates(message as TestRequest)) as TestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestRequest create() => TestRequest._();
  TestRequest createEmptyInstance() => create();
  static $pb.PbList<TestRequest> createRepeated() => $pb.PbList<TestRequest>();
  @$core.pragma('dart2js:noInline')
  static TestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestRequest>(create);
  static TestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get request => $_getSZ(0);
  @$pb.TagNumber(1)
  set request($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
}

class TestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response')
    ..hasRequiredFields = false
  ;

  TestResponse._() : super();
  factory TestResponse({
    $core.String? response,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    return _result;
  }
  factory TestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestResponse clone() => TestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestResponse copyWith(void Function(TestResponse) updates) => super.copyWith((message) => updates(message as TestResponse)) as TestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestResponse create() => TestResponse._();
  TestResponse createEmptyInstance() => create();
  static $pb.PbList<TestResponse> createRepeated() => $pb.PbList<TestResponse>();
  @$core.pragma('dart2js:noInline')
  static TestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestResponse>(create);
  static TestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

