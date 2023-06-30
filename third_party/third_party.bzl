"""
File with all 3rd party dependencies needed for the project

They are loaded but without loading the transitive dependencies, this is done in
a separated file extra_dependencies.bzl
"""

load("//third_party/bazel_skylib:load.bzl", "load_bazel_skylib")
load("//third_party/buildtools:load.bzl", "load_buildtools")
load("//third_party/gtest:load.bzl", "load_gtest")
load("//third_party/rules_foreign_cc:load.bzl", "load_foreign_cc")
load("//third_party/wolfssl:load.bzl", "load_wolfssl")
load("//third_party/protobuf:load.bzl", "load_protobuf")
load("//third_party/rules_go:load.bzl", "load_rules_go")


def load_third_party_libraries():
    """Load all third party dependencies"""
    load_bazel_skylib()
    load_buildtools()
    load_gtest()
    load_foreign_cc()
    load_wolfssl()
    load_protobuf()
    load_rules_go()