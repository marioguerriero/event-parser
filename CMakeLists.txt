project(event-parser)

cmake_minimum_required(VERSION 3.0)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set (EXEC_NAME "event-parser")

find_package(PkgConfig)

set(PARSER_DEPS
  gobject-2.0
  glib-2.0)

pkg_check_modules(DEPS REQUIRED ${PARSER_DEPS})

add_definitions(${DEPS_CFLAGS} -lgthread-2.0)
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

add_definitions(-w)

find_package(Vala REQUIRED)
include(ValaVersion)
ensure_vala_version("0.24" MINIMUM)

include(ValaPrecompile)
vala_precompile(VALA_C ${EXEC_NAME}
	src/parser_en.vala
	src/event.vala
	src/tests.vala
	src/EventParser.vala
	tests/test_de.vala
	tests/test_en.vala
PACKAGES
	${PARSER_DEPS}
)

add_executable(${EXEC_NAME} ${VALA_C})
install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)