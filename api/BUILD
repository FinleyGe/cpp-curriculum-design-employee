package(default_visibility = ["//visibility:public"])
load("@rules_proto//proto:defs.bzl",
"proto_library")
load("@com_github_grpc_grpc//bazel:cc_grpc_library.bzl",
"cc_grpc_library")
load("@com_github_grpc_grpc//bazel:grpc_build_system.bzl",
"grpc_proto_library")

grpc_proto_library( name = "api", srcs = ["api.proto"],)


# cc_library (
#   name = "api",
#   srcs = [
#     "api.pb.cc",
#     "api.grpc.pb.cc",
#   ],
#   hdrs = [
#     "api.pb.h",
#     "api.grpc.pb.h",
#   ],
#   deps = [
#     "@com_github_grpc_grpc//:grpc++",
#   ],
#   visibility = ["//src:__pkg__"],
# )
