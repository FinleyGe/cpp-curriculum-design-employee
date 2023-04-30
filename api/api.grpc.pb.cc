// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: api.proto

#include "api.pb.h"
#include "api.grpc.pb.h"

#include <functional>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/impl/channel_interface.h>
#include <grpcpp/impl/client_unary_call.h>
#include <grpcpp/support/client_callback.h>
#include <grpcpp/support/message_allocator.h>
#include <grpcpp/support/method_handler.h>
#include <grpcpp/impl/rpc_service_method.h>
#include <grpcpp/support/server_callback.h>
#include <grpcpp/impl/server_callback_handlers.h>
#include <grpcpp/server_context.h>
#include <grpcpp/impl/service_type.h>
#include <grpcpp/support/sync_stream.h>
namespace api {

static const char* EmployeeService_method_names[] = {
  "/api.EmployeeService/Test",
};

std::unique_ptr< EmployeeService::Stub> EmployeeService::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  (void)options;
  std::unique_ptr< EmployeeService::Stub> stub(new EmployeeService::Stub(channel, options));
  return stub;
}

EmployeeService::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options)
  : channel_(channel), rpcmethod_Test_(EmployeeService_method_names[0], options.suffix_for_stats(),::grpc::internal::RpcMethod::NORMAL_RPC, channel)
  {}

::grpc::Status EmployeeService::Stub::Test(::grpc::ClientContext* context, const ::api::TestRequest& request, ::api::TestResponse* response) {
  return ::grpc::internal::BlockingUnaryCall< ::api::TestRequest, ::api::TestResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), rpcmethod_Test_, context, request, response);
}

void EmployeeService::Stub::async::Test(::grpc::ClientContext* context, const ::api::TestRequest* request, ::api::TestResponse* response, std::function<void(::grpc::Status)> f) {
  ::grpc::internal::CallbackUnaryCall< ::api::TestRequest, ::api::TestResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_Test_, context, request, response, std::move(f));
}

void EmployeeService::Stub::async::Test(::grpc::ClientContext* context, const ::api::TestRequest* request, ::api::TestResponse* response, ::grpc::ClientUnaryReactor* reactor) {
  ::grpc::internal::ClientCallbackUnaryFactory::Create< ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(stub_->channel_.get(), stub_->rpcmethod_Test_, context, request, response, reactor);
}

::grpc::ClientAsyncResponseReader< ::api::TestResponse>* EmployeeService::Stub::PrepareAsyncTestRaw(::grpc::ClientContext* context, const ::api::TestRequest& request, ::grpc::CompletionQueue* cq) {
  return ::grpc::internal::ClientAsyncResponseReaderHelper::Create< ::api::TestResponse, ::api::TestRequest, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(channel_.get(), cq, rpcmethod_Test_, context, request);
}

::grpc::ClientAsyncResponseReader< ::api::TestResponse>* EmployeeService::Stub::AsyncTestRaw(::grpc::ClientContext* context, const ::api::TestRequest& request, ::grpc::CompletionQueue* cq) {
  auto* result =
    this->PrepareAsyncTestRaw(context, request, cq);
  result->StartCall();
  return result;
}

EmployeeService::Service::Service() {
  AddMethod(new ::grpc::internal::RpcServiceMethod(
      EmployeeService_method_names[0],
      ::grpc::internal::RpcMethod::NORMAL_RPC,
      new ::grpc::internal::RpcMethodHandler< EmployeeService::Service, ::api::TestRequest, ::api::TestResponse, ::grpc::protobuf::MessageLite, ::grpc::protobuf::MessageLite>(
          [](EmployeeService::Service* service,
             ::grpc::ServerContext* ctx,
             const ::api::TestRequest* req,
             ::api::TestResponse* resp) {
               return service->Test(ctx, req, resp);
             }, this)));
}

EmployeeService::Service::~Service() {
}

::grpc::Status EmployeeService::Service::Test(::grpc::ServerContext* context, const ::api::TestRequest* request, ::api::TestResponse* response) {
  (void) context;
  (void) request;
  (void) response;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace api

