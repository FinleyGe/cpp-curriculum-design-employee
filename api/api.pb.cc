// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: api.proto

#include "api.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>

PROTOBUF_PRAGMA_INIT_SEG

namespace _pb = ::PROTOBUF_NAMESPACE_ID;
namespace _pbi = _pb::internal;

namespace api {
PROTOBUF_CONSTEXPR TestRequest::TestRequest(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_.request_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_._cached_size_)*/{}} {}
struct TestRequestDefaultTypeInternal {
  PROTOBUF_CONSTEXPR TestRequestDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~TestRequestDefaultTypeInternal() {}
  union {
    TestRequest _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 TestRequestDefaultTypeInternal _TestRequest_default_instance_;
PROTOBUF_CONSTEXPR TestResponse::TestResponse(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_.response_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_._cached_size_)*/{}} {}
struct TestResponseDefaultTypeInternal {
  PROTOBUF_CONSTEXPR TestResponseDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~TestResponseDefaultTypeInternal() {}
  union {
    TestResponse _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 TestResponseDefaultTypeInternal _TestResponse_default_instance_;
}  // namespace api
static ::_pb::Metadata file_level_metadata_api_2eproto[2];
static constexpr ::_pb::EnumDescriptor const** file_level_enum_descriptors_api_2eproto = nullptr;
static constexpr ::_pb::ServiceDescriptor const** file_level_service_descriptors_api_2eproto = nullptr;

const uint32_t TableStruct_api_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::api::TestRequest, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::api::TestRequest, _impl_.request_),
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::api::TestResponse, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::api::TestResponse, _impl_.response_),
};
static const ::_pbi::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, -1, sizeof(::api::TestRequest)},
  { 7, -1, -1, sizeof(::api::TestResponse)},
};

static const ::_pb::Message* const file_default_instances[] = {
  &::api::_TestRequest_default_instance_._instance,
  &::api::_TestResponse_default_instance_._instance,
};

const char descriptor_table_protodef_api_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\tapi.proto\022\003api\"\036\n\013TestRequest\022\017\n\007reque"
  "st\030\001 \001(\t\" \n\014TestResponse\022\020\n\010response\030\001 \001"
  "(\t2>\n\017EmployeeService\022+\n\004Test\022\020.api.Test"
  "Request\032\021.api.TestResponseb\006proto3"
  ;
static ::_pbi::once_flag descriptor_table_api_2eproto_once;
const ::_pbi::DescriptorTable descriptor_table_api_2eproto = {
    false, false, 154, descriptor_table_protodef_api_2eproto,
    "api.proto",
    &descriptor_table_api_2eproto_once, nullptr, 0, 2,
    schemas, file_default_instances, TableStruct_api_2eproto::offsets,
    file_level_metadata_api_2eproto, file_level_enum_descriptors_api_2eproto,
    file_level_service_descriptors_api_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::_pbi::DescriptorTable* descriptor_table_api_2eproto_getter() {
  return &descriptor_table_api_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY2 static ::_pbi::AddDescriptorsRunner dynamic_init_dummy_api_2eproto(&descriptor_table_api_2eproto);
namespace api {

// ===================================================================

class TestRequest::_Internal {
 public:
};

TestRequest::TestRequest(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:api.TestRequest)
}
TestRequest::TestRequest(const TestRequest& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  TestRequest* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_.request_){}
    , /*decltype(_impl_._cached_size_)*/{}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  _impl_.request_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.request_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (!from._internal_request().empty()) {
    _this->_impl_.request_.Set(from._internal_request(), 
      _this->GetArenaForAllocation());
  }
  // @@protoc_insertion_point(copy_constructor:api.TestRequest)
}

inline void TestRequest::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_.request_){}
    , /*decltype(_impl_._cached_size_)*/{}
  };
  _impl_.request_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.request_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
}

TestRequest::~TestRequest() {
  // @@protoc_insertion_point(destructor:api.TestRequest)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void TestRequest::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  _impl_.request_.Destroy();
}

void TestRequest::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void TestRequest::Clear() {
// @@protoc_insertion_point(message_clear_start:api.TestRequest)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  _impl_.request_.ClearToEmpty();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* TestRequest::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // string request = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 10)) {
          auto str = _internal_mutable_request();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          CHK_(::_pbi::VerifyUTF8(str, "api.TestRequest.request"));
        } else
          goto handle_unusual;
        continue;
      default:
        goto handle_unusual;
    }  // switch
  handle_unusual:
    if ((tag == 0) || ((tag & 7) == 4)) {
      CHK_(ptr);
      ctx->SetLastTag(tag);
      goto message_done;
    }
    ptr = UnknownFieldParse(
        tag,
        _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
        ptr, ctx);
    CHK_(ptr != nullptr);
  }  // while
message_done:
  return ptr;
failure:
  ptr = nullptr;
  goto message_done;
#undef CHK_
}

uint8_t* TestRequest::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:api.TestRequest)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  // string request = 1;
  if (!this->_internal_request().empty()) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_request().data(), static_cast<int>(this->_internal_request().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "api.TestRequest.request");
    target = stream->WriteStringMaybeAliased(
        1, this->_internal_request(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:api.TestRequest)
  return target;
}

size_t TestRequest::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:api.TestRequest)
  size_t total_size = 0;

  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // string request = 1;
  if (!this->_internal_request().empty()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_request());
  }

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData TestRequest::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    TestRequest::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*TestRequest::GetClassData() const { return &_class_data_; }


void TestRequest::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<TestRequest*>(&to_msg);
  auto& from = static_cast<const TestRequest&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:api.TestRequest)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  if (!from._internal_request().empty()) {
    _this->_internal_set_request(from._internal_request());
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void TestRequest::CopyFrom(const TestRequest& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:api.TestRequest)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool TestRequest::IsInitialized() const {
  return true;
}

void TestRequest::InternalSwap(TestRequest* other) {
  using std::swap;
  auto* lhs_arena = GetArenaForAllocation();
  auto* rhs_arena = other->GetArenaForAllocation();
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.request_, lhs_arena,
      &other->_impl_.request_, rhs_arena
  );
}

::PROTOBUF_NAMESPACE_ID::Metadata TestRequest::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_api_2eproto_getter, &descriptor_table_api_2eproto_once,
      file_level_metadata_api_2eproto[0]);
}

// ===================================================================

class TestResponse::_Internal {
 public:
};

TestResponse::TestResponse(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:api.TestResponse)
}
TestResponse::TestResponse(const TestResponse& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  TestResponse* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_.response_){}
    , /*decltype(_impl_._cached_size_)*/{}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  _impl_.response_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.response_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (!from._internal_response().empty()) {
    _this->_impl_.response_.Set(from._internal_response(), 
      _this->GetArenaForAllocation());
  }
  // @@protoc_insertion_point(copy_constructor:api.TestResponse)
}

inline void TestResponse::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_.response_){}
    , /*decltype(_impl_._cached_size_)*/{}
  };
  _impl_.response_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.response_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
}

TestResponse::~TestResponse() {
  // @@protoc_insertion_point(destructor:api.TestResponse)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void TestResponse::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  _impl_.response_.Destroy();
}

void TestResponse::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void TestResponse::Clear() {
// @@protoc_insertion_point(message_clear_start:api.TestResponse)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  _impl_.response_.ClearToEmpty();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* TestResponse::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // string response = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 10)) {
          auto str = _internal_mutable_response();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          CHK_(::_pbi::VerifyUTF8(str, "api.TestResponse.response"));
        } else
          goto handle_unusual;
        continue;
      default:
        goto handle_unusual;
    }  // switch
  handle_unusual:
    if ((tag == 0) || ((tag & 7) == 4)) {
      CHK_(ptr);
      ctx->SetLastTag(tag);
      goto message_done;
    }
    ptr = UnknownFieldParse(
        tag,
        _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
        ptr, ctx);
    CHK_(ptr != nullptr);
  }  // while
message_done:
  return ptr;
failure:
  ptr = nullptr;
  goto message_done;
#undef CHK_
}

uint8_t* TestResponse::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:api.TestResponse)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  // string response = 1;
  if (!this->_internal_response().empty()) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_response().data(), static_cast<int>(this->_internal_response().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "api.TestResponse.response");
    target = stream->WriteStringMaybeAliased(
        1, this->_internal_response(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:api.TestResponse)
  return target;
}

size_t TestResponse::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:api.TestResponse)
  size_t total_size = 0;

  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // string response = 1;
  if (!this->_internal_response().empty()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_response());
  }

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData TestResponse::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    TestResponse::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*TestResponse::GetClassData() const { return &_class_data_; }


void TestResponse::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<TestResponse*>(&to_msg);
  auto& from = static_cast<const TestResponse&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:api.TestResponse)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  if (!from._internal_response().empty()) {
    _this->_internal_set_response(from._internal_response());
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void TestResponse::CopyFrom(const TestResponse& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:api.TestResponse)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool TestResponse::IsInitialized() const {
  return true;
}

void TestResponse::InternalSwap(TestResponse* other) {
  using std::swap;
  auto* lhs_arena = GetArenaForAllocation();
  auto* rhs_arena = other->GetArenaForAllocation();
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.response_, lhs_arena,
      &other->_impl_.response_, rhs_arena
  );
}

::PROTOBUF_NAMESPACE_ID::Metadata TestResponse::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_api_2eproto_getter, &descriptor_table_api_2eproto_once,
      file_level_metadata_api_2eproto[1]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace api
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::api::TestRequest*
Arena::CreateMaybeMessage< ::api::TestRequest >(Arena* arena) {
  return Arena::CreateMessageInternal< ::api::TestRequest >(arena);
}
template<> PROTOBUF_NOINLINE ::api::TestResponse*
Arena::CreateMaybeMessage< ::api::TestResponse >(Arena* arena) {
  return Arena::CreateMessageInternal< ::api::TestResponse >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
