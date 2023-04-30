#include "api/api.grpc.pb.h"
#include <grpc++/grpc++.h>
#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>
#include <iostream>
#include <memory>

using api::EmployeeService;
using api::TestRequest;
using api::TestResponse;
using grpc::Server;
using grpc::ServerAsyncResponseWriter;
using grpc::ServerBuilder;
using grpc::ServerCompletionQueue;
using grpc::ServerContext;
using grpc::Status;

class EmployeeServiceImpl final : public EmployeeService::Service {
  Status Test(ServerContext *context, const TestRequest *request,
              TestResponse *response) override {
    std::cout << "Test called" << std::endl;
    return Status::OK;
  }
};

void RunServer() {
  std::string server_address("0.0.0.0:50051");
  EmployeeServiceImpl service;
  grpc::EnableDefaultHealthCheckService(true);
  grpc::reflection::InitProtoReflectionServerBuilderPlugin();
  ServerBuilder builder;
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  builder.RegisterService(&service);
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}

int main(int argc, char **argv) {
  RunServer();
  return 0;
}
