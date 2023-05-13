#include "api/api.grpc.pb.h"
#include "src/Employee.hpp"
#include "src/Management.hpp"
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

Management m = Management();

class EmployeeServiceImpl final : public EmployeeService::Service {

  Status AddEmployee(ServerContext *context,
                     const api::AddEmployeeRequest *request,
                     api::AddEmployeeResponse *reply) override {

    std::cout << "AddEmployee called:" << request->empolyee().id() << std::endl;

    EmployeeInfo ei;
    ei.name = request->empolyee().name();
    ei.id = request->empolyee().id();
    ei.phone = request->empolyee().phone();
    ei.college = request->empolyee().college();
    ei.department = request->empolyee().department();
    ei.education = Education(request->empolyee().education());
    int res = m.addEmployee(Employee(ei));
    reply->set_res(res);
    m.save();
    return Status::OK;
  }

  Status DeleteEmployee(ServerContext *context,
                        const api::DeleteEmployeeRequest *request,
                        api::DeleteEmployeeResponse *reply) override {

    std::cout << "DeleteEmployee called: ";
    std::cout << request->id() << std::endl;
    auto res = m.deleteEmployee(request->id());
    reply->set_res(res);
    m.save();
    return Status::OK;
  }

  Status UpdateEmployee(ServerContext *context,
                        const api::UpdateEmployeeRequest *request,
                        api::UpdateEmployeeResponse *reply) override {
    std::cout << "UpdateEmployee called" << std::endl;
    EmployeeInfo ei;
    ei.name = request->empolyee().name();
    ei.id = request->empolyee().id();
    ei.phone = request->empolyee().phone();
    ei.college = request->empolyee().college();
    ei.department = request->empolyee().department();
    ei.education = Education(request->empolyee().education());
    auto res = m.modifyEmployee(Employee(ei));
    reply->set_res(res);
    m.save();
    return Status::OK;
  };

  Status GetEmployee(ServerContext *context,
                     const api::GetEmployeeRequest *request,
                     api::GetEmployeeResponse *reply) override {
    std::cout << "GetEmployee called" << std::endl;
    auto res = m.searchEmployeeByID(request->id());
    auto emp = reply->mutable_empolyee();
    if (res == Employee()) {
      emp->set_name("NULL");
      emp->set_id("NULL");
      emp->set_phone("NULL");
      emp->set_college("NULL");
      emp->set_department("NULL");
      emp->set_education(Education::DOCTOR);
      m.save();
      return Status::OK;
    }
    auto ei = res.getInfo();
    emp->set_name(ei.name);
    emp->set_id(ei.id);
    emp->set_phone(ei.phone);
    emp->set_college(ei.college);
    emp->set_department(ei.department);
    emp->set_education(ei.education);
    m.save();
    return Status::OK;
  };

  Status
  GetEmployeeByKeyword(ServerContext *context,
                       const api::GetEmployeeByKeywordRequest *request,
                       api::GetEmployeeByKeywordResponse *reply) override {
    std::cout << "GetEmployeeByKeywords called" << std::endl;
    auto res = m.searchEmployee(request->keyword());
    auto p = res.begin();
    while (p != res.end()) {
      auto emp = reply->mutable_empolyeelist()->add_empolyee();
      auto ei = p->data.getInfo();
      emp->set_name(ei.name);
      emp->set_id(ei.id);
      emp->set_phone(ei.phone);
      emp->set_college(ei.college);
      emp->set_department(ei.department);
      emp->set_education(ei.education);
      p = p->next;
    }
    m.save();
    return Status::OK;
  };

  Status
  StatisticByDepartment(ServerContext *context,
                        const api::StatisticByDepartmentRequest *request,
                        api::StatisticByDepartmentResponse *reply) override {
    std::cout << "StatisticByDepartment called" << std::endl;
    std::map<string, std::map<Education, int>> res =
        m.statisticsByDepartmentMap();
    std::cout << m.statisticsByDepartment();
    for (auto &i : res) {
      auto dep = reply->add_departmentstatistic();
      dep->set_department(i.first);
      dep->set_bachelor(i.second[Education::BACHELOR]);
      dep->set_master(i.second[Education::MASTER]);
      dep->set_doctor(i.second[Education::DOCTOR]);
    }
    m.save();
    return Status::OK;
  };

  Status
  StatisticByEducation(ServerContext *context,
                       const api::StatisticByEducationRequest *request,
                       api::StatisticByEducationResponse *reply) override {
    std::cout << "StatisticByEducation called" << std::endl;
    std::map<Education, int> res = m.statisticsByEducationMap();
    reply->mutable_educationstatistic()->set_bachelor(res[Education::BACHELOR]);
    reply->mutable_educationstatistic()->set_master(res[Education::MASTER]);
    reply->mutable_educationstatistic()->set_doctor(res[Education::DOCTOR]);
    m.save();
    return Status::OK;
  };

  Status Test(ServerContext *context, const TestRequest *request,
              TestResponse *reply) override {
    std::cout << "Test called" << std::endl;
    reply->set_response("Test");
    m.save();
    return Status::OK;
  };
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
  m.load();
  RunServer();
  return 0;
}
