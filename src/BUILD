# load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_library (
  name = "employee",
  srcs = ["Employee.cpp"],
  hdrs = ["Employee.hpp"],
)

cc_library (
  name = "validate",
  srcs = ["validate.cpp"],
  hdrs = ["validate.hpp"],
  deps = ["//src:employee"],
)

cc_library (
  name = "management",
  srcs = ["Management.cpp"],
  hdrs = ["Management.hpp"],
  deps = [
  "//src:employee", 
  "//lib:linked-list", 
  "//src:validate",
  ],
)


cc_binary (
  name = "employee-management",
  srcs = ["UserInterface.cpp"],
  deps = [
    "//src:validate",
    "//src:management",
    "//lib:linked-list",
  ],
)

cc_binary (
  name = "server",
  srcs = ["server.cpp"],
  deps = [
    "//src:validate",
    "//src:management",
    "//lib:linked-list",
    "//api:api",
    "@com_github_grpc_grpc//:grpc++",
    "@com_github_grpc_grpc//:grpc++_reflection",
  ],
)
