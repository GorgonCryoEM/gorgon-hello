#TODO: remove if not needed on Linux anymore
if(UNIX)
	set(Boost_NO_BOOST_CMAKE ON)
endif()

set(Boost_USE_MULTITHREADED ON)
set(Boost_DEBUG ON)

if(NOT WIN32)
	find_package(Boost COMPONENTS python REQUIRED)
else()
	set(BOOST_LIBRARYDIR $ENV{LIBRARY_LIB})
	find_package(Boost COMPONENTS python serialization REQUIRED)
endif()

message("_________${CMAKE_CURRENT_SOURCE_DIR}")
message("_________${CMAKE_CURRENT_LIST_FILE}")
message("_________${CMAKE_CURRENT_BINARY_DIR}")
message("BOOST_LIBRARYDIR: ${BOOST_LIBRARYDIR}")

update_libs_includes(Boost_LIBRARIES Boost_INCLUDE_DIR)
if(Boost_FOUND)
	message(STATUS "  ${Boost_LIBRARIES}")
endif()

if(WIN32)
	link_directories(${Boost_LIBRARY_DIR_RELEASE})
	link_directories($ENV{LIBRARY_LIB})
endif()
