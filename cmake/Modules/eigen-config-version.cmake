set(PACKAGE_VERSION_EXACT False)
set(PACKAGE_VERSION_COMPATIBLE False)
if("${PACKAGE_FIND_VERSION}" STREQUAL "")
  set(PACKAGE_VERSION_COMPATIBLE TRUE)
  return()
endif()

if("${PACKAGE_FIND_VERSION}" VERSION_EQUAL "")
  set(PACKAGE_VERSION_EXACT True)
  set(PACKAGE_VERSION_COMPATIBLE True)
endif()

if("${PACKAGE_FIND_VERSION}" VERSION_LESS "")
  set(PACKAGE_VERSION_COMPATIBLE True)
endif()
