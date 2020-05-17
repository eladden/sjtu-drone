# include(FindLibraryWithDebug)

if (ORBSLAM2_INCLUDES AND ORBSLAM2_LIBRARIES)
  set(ORBSLAM2_FIND_QUIETLY TRUE)
endif (ORBSLAM2_INCLUDES AND ORBSLAM2_LIBRARIES)

find_path(ORBSLAM2_INCLUDES
  NAMES
  ORB_SLAM2/include/System.h
  #coin/CglConfig.h
  PATHS
  $ENV{ORBSLAM2DIR}/include
  ${INCLUDE_INSTALL_DIR}
)

find_library(ORBSLAM2_LIBRARIES
  ORB_SLAM2
  PATHS
  $ENV{ORBSLAM2DIR}/lib
  ${LIB_INSTALL_DIR}
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ORBSLAM2 #DEFAULT_MSG
                                  ORBSLAM2_INCLUDES ORBSLAM2_LIBRARIES)

mark_as_advanced(ORBSLAM2_INCLUDES ORBSLAM2_LIBRARIES)

