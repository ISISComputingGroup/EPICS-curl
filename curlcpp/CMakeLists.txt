cmake_minimum_required(VERSION 2.8)
set(CURL_MIN_VERSION "7.28.0")

# Setting up project
project(CURLCPP)


# Add MacPorts
if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  set(CMAKE_PREFIX_PATH /opt/local ${CMAKE_PREFIX_PATH})
endif()

# Checking for dependencies
find_package(CURL ${CURL_MIN_VERSION} REQUIRED)

# Set up include pathes
include_directories(${CURL_INCLUDE_DIRS}
  ${CURLCPP_SOURCE_DIR}/include)

# Set up source directories
add_subdirectory(src)

get_property(CURLCPP_LIB_LOCATION TARGET curlcpp PROPERTY LOCATION)

configure_file(CMake/curlcppConfig.cmake.in
  ${CURLCPP_BINARY_DIR}/curlcppConfig.cmake @ONLY)
