# Install script for directory: /home/nashed/ros/TraGen/EigenAll/Eigen

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/eigen3/Eigen/Eigen2Support;/usr/local/include/eigen3/Eigen/StdVector;/usr/local/include/eigen3/Eigen/PaStiXSupport;/usr/local/include/eigen3/Eigen/Sparse;/usr/local/include/eigen3/Eigen/SparseQR;/usr/local/include/eigen3/Eigen/PardisoSupport;/usr/local/include/eigen3/Eigen/QR;/usr/local/include/eigen3/Eigen/QtAlignedMalloc;/usr/local/include/eigen3/Eigen/LU;/usr/local/include/eigen3/Eigen/Eigen;/usr/local/include/eigen3/Eigen/SPQRSupport;/usr/local/include/eigen3/Eigen/UmfPackSupport;/usr/local/include/eigen3/Eigen/StdList;/usr/local/include/eigen3/Eigen/SparseCore;/usr/local/include/eigen3/Eigen/CholmodSupport;/usr/local/include/eigen3/Eigen/StdDeque;/usr/local/include/eigen3/Eigen/Jacobi;/usr/local/include/eigen3/Eigen/SuperLUSupport;/usr/local/include/eigen3/Eigen/Dense;/usr/local/include/eigen3/Eigen/Cholesky;/usr/local/include/eigen3/Eigen/SVD;/usr/local/include/eigen3/Eigen/OrderingMethods;/usr/local/include/eigen3/Eigen/Array;/usr/local/include/eigen3/Eigen/IterativeLinearSolvers;/usr/local/include/eigen3/Eigen/SparseCholesky;/usr/local/include/eigen3/Eigen/Eigenvalues;/usr/local/include/eigen3/Eigen/Householder;/usr/local/include/eigen3/Eigen/LeastSquares;/usr/local/include/eigen3/Eigen/SparseLU;/usr/local/include/eigen3/Eigen/Geometry;/usr/local/include/eigen3/Eigen/Core;/usr/local/include/eigen3/Eigen/MetisSupport")
FILE(INSTALL DESTINATION "/usr/local/include/eigen3/Eigen" TYPE FILE FILES
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Eigen2Support"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/StdVector"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/PaStiXSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Sparse"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SparseQR"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/PardisoSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/QR"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/QtAlignedMalloc"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/LU"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Eigen"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SPQRSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/UmfPackSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/StdList"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SparseCore"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/CholmodSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/StdDeque"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Jacobi"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SuperLUSupport"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Dense"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Cholesky"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SVD"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/OrderingMethods"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Array"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/IterativeLinearSolvers"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SparseCholesky"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Eigenvalues"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Householder"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/LeastSquares"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/SparseLU"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Geometry"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/Core"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/MetisSupport"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/nashed/ros/TraGen/EigenAll/build/Eigen/src/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

