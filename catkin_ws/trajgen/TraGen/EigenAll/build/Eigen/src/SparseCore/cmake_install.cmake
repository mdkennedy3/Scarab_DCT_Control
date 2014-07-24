# Install script for directory: /home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore

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
   "/usr/local/include/eigen3/Eigen/src/SparseCore/SparseView.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseFuzzy.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseUtil.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseRedux.h;/usr/local/include/eigen3/Eigen/src/SparseCore/AmbiVector.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseMatrix.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseSparseProductWithPruning.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseBlock.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseDot.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseSelfAdjointView.h;/usr/local/include/eigen3/Eigen/src/SparseCore/ConservativeSparseSparseProduct.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseCwiseBinaryOp.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseMatrixBase.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseColEtree.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseCwiseUnaryOp.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparsePermutation.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseTriangularView.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseDenseProduct.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseVector.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseTranspose.h;/usr/local/include/eigen3/Eigen/src/SparseCore/TriangularSolver.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseDiagonalProduct.h;/usr/local/include/eigen3/Eigen/src/SparseCore/CompressedStorage.h;/usr/local/include/eigen3/Eigen/src/SparseCore/MappedSparseMatrix.h;/usr/local/include/eigen3/Eigen/src/SparseCore/SparseProduct.h")
FILE(INSTALL DESTINATION "/usr/local/include/eigen3/Eigen/src/SparseCore" TYPE FILE FILES
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseView.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseFuzzy.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseUtil.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseRedux.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/AmbiVector.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseMatrix.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseSparseProductWithPruning.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseBlock.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseDot.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseSelfAdjointView.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/ConservativeSparseSparseProduct.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseCwiseBinaryOp.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseMatrixBase.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseColEtree.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseCwiseUnaryOp.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparsePermutation.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseTriangularView.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseDenseProduct.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseVector.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseTranspose.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/TriangularSolver.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseDiagonalProduct.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/CompressedStorage.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/MappedSparseMatrix.h"
    "/home/nashed/ros/TraGen/EigenAll/Eigen/src/SparseCore/SparseProduct.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

