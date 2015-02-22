project(event-parser)

cmake_minimum_required(VERSION 3.0)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set (EXEC_NAME "event-parser")

find_package(PkgConfig)

pkg_check_modules(DEPS REQUIRED glib-2.0)
pkg_check_modules(DEPS REQUIRED gobject-2.0)

add_definitions(${DEPS_CFLAGS})
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

find_package(Vala REQUIRED)
include(ValaVersion)
ensure_vala_version("0.24" MINIMUM)

include(ValaPrecompile)
vala_precompile(VALA_C ${EXEC_NAME}
	src/parser_en.vala
	src/event.vala
	src/tests.vala
	tests/test_de.vala
	tests/test_en.vala
)

add_executable(${EXEC_NAME} ${VALA_C})
install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)