all:
	bazel build "//src:*"
	# TODO: add flutter here

core:
	bazel build //src:employee-management

server:
	bazel build //src:server

clean:
	bazel clean
