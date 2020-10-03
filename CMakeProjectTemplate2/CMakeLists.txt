# cmake最低版本号要求
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)                                             

#--------------------------------------------
# Project setting
#--------------------------------------------

PROJECT(HelloApp)

OPTION(BUILD_TESTS "Build with tests" OFF)
                                                 

MESSAGE(INFO "--------------------------------")
MESSAGE(STATUS "Build HelloApp: ${HELLO_APP_VERSION}")
MESSAGE(STATUS "Build with tests: ${BUILD_TESTS}")
MESSAGE(STATUS "CMAKE_INSTALL_PREFIX: ${CMAKE_INSTALL_PREFIX}")
IF (NOT CMAKE_TOOLCHAIN_FILE)
    MESSAGE(STATUS "CMAKE_TOOLCHAIN_FILE: ${CMAKE_TOOLCHAIN_FILE}")
ENDIF()


#--------------------------------------------
# Set default build to debug
#--------------------------------------------
IF(NOT CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Choose Release or Debug" FORCE)
ENDIF()                                                                        

MESSAGE(STATUS "Build type: " ${CMAKE_BUILD_TYPE})

#--------------------------------------------
# Set compilation options
#--------------------------------------------

#--------------------------------------------
# Build 3rdparty
#--------------------------------------------
MESSAGE(INFO "--------------------------------")
#--------------------------------------------

# Build application
#--------------------------------------------
MESSAGE(INFO "--------------------------------")
ADD_SUBDIRECTORY(src)

IF(BUILD_TESTS)
    MESSAGE(INFO "--------------------------------")
    ADD_SUBDIRECTORY(tests)
ENDIF()


