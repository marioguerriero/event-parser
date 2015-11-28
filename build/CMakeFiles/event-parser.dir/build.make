# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mario/dev/vala/event-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mario/dev/vala/event-parser/build

# Include any dependencies generated for this target.
include CMakeFiles/event-parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/event-parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/event-parser.dir/flags.make

src/parser_en.c: event-parser_valac.stamp

src/event.c: src/parser_en.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/event.c

src/tests.c: src/parser_en.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/tests.c

src/EventParser.c: src/parser_en.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/EventParser.c

tests/test_de.c: src/parser_en.c
	@$(CMAKE_COMMAND) -E touch_nocreate tests/test_de.c

tests/test_en.c: src/parser_en.c
	@$(CMAKE_COMMAND) -E touch_nocreate tests/test_en.c

event-parser_valac.stamp: ../src/parser_en.vala
event-parser_valac.stamp: ../src/event.vala
event-parser_valac.stamp: ../src/tests.vala
event-parser_valac.stamp: ../src/EventParser.vala
event-parser_valac.stamp: ../tests/test_de.vala
event-parser_valac.stamp: ../tests/test_en.vala
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating src/parser_en.c;src/event.c;src/tests.c;src/EventParser.c;tests/test_de.c;tests/test_en.c"
	/usr/bin/valac -C -b /home/mario/dev/vala/event-parser -d /home/mario/dev/vala/event-parser/build --pkg=gobject-2.0 --pkg=glib-2.0 /home/mario/dev/vala/event-parser/src/parser_en.vala /home/mario/dev/vala/event-parser/src/event.vala /home/mario/dev/vala/event-parser/src/tests.vala /home/mario/dev/vala/event-parser/src/EventParser.vala /home/mario/dev/vala/event-parser/tests/test_de.vala /home/mario/dev/vala/event-parser/tests/test_en.vala
	touch /home/mario/dev/vala/event-parser/build/event-parser_valac.stamp

CMakeFiles/event-parser.dir/src/parser_en.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/src/parser_en.c.o: src/parser_en.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/src/parser_en.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/src/parser_en.c.o   -c /home/mario/dev/vala/event-parser/build/src/parser_en.c

CMakeFiles/event-parser.dir/src/parser_en.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/src/parser_en.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/src/parser_en.c > CMakeFiles/event-parser.dir/src/parser_en.c.i

CMakeFiles/event-parser.dir/src/parser_en.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/src/parser_en.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/src/parser_en.c -o CMakeFiles/event-parser.dir/src/parser_en.c.s

CMakeFiles/event-parser.dir/src/parser_en.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/src/parser_en.c.o.requires

CMakeFiles/event-parser.dir/src/parser_en.c.o.provides: CMakeFiles/event-parser.dir/src/parser_en.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/src/parser_en.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/src/parser_en.c.o.provides

CMakeFiles/event-parser.dir/src/parser_en.c.o.provides.build: CMakeFiles/event-parser.dir/src/parser_en.c.o

CMakeFiles/event-parser.dir/src/event.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/src/event.c.o: src/event.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/src/event.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/src/event.c.o   -c /home/mario/dev/vala/event-parser/build/src/event.c

CMakeFiles/event-parser.dir/src/event.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/src/event.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/src/event.c > CMakeFiles/event-parser.dir/src/event.c.i

CMakeFiles/event-parser.dir/src/event.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/src/event.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/src/event.c -o CMakeFiles/event-parser.dir/src/event.c.s

CMakeFiles/event-parser.dir/src/event.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/src/event.c.o.requires

CMakeFiles/event-parser.dir/src/event.c.o.provides: CMakeFiles/event-parser.dir/src/event.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/src/event.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/src/event.c.o.provides

CMakeFiles/event-parser.dir/src/event.c.o.provides.build: CMakeFiles/event-parser.dir/src/event.c.o

CMakeFiles/event-parser.dir/src/tests.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/src/tests.c.o: src/tests.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/src/tests.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/src/tests.c.o   -c /home/mario/dev/vala/event-parser/build/src/tests.c

CMakeFiles/event-parser.dir/src/tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/src/tests.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/src/tests.c > CMakeFiles/event-parser.dir/src/tests.c.i

CMakeFiles/event-parser.dir/src/tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/src/tests.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/src/tests.c -o CMakeFiles/event-parser.dir/src/tests.c.s

CMakeFiles/event-parser.dir/src/tests.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/src/tests.c.o.requires

CMakeFiles/event-parser.dir/src/tests.c.o.provides: CMakeFiles/event-parser.dir/src/tests.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/src/tests.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/src/tests.c.o.provides

CMakeFiles/event-parser.dir/src/tests.c.o.provides.build: CMakeFiles/event-parser.dir/src/tests.c.o

CMakeFiles/event-parser.dir/src/EventParser.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/src/EventParser.c.o: src/EventParser.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/src/EventParser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/src/EventParser.c.o   -c /home/mario/dev/vala/event-parser/build/src/EventParser.c

CMakeFiles/event-parser.dir/src/EventParser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/src/EventParser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/src/EventParser.c > CMakeFiles/event-parser.dir/src/EventParser.c.i

CMakeFiles/event-parser.dir/src/EventParser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/src/EventParser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/src/EventParser.c -o CMakeFiles/event-parser.dir/src/EventParser.c.s

CMakeFiles/event-parser.dir/src/EventParser.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/src/EventParser.c.o.requires

CMakeFiles/event-parser.dir/src/EventParser.c.o.provides: CMakeFiles/event-parser.dir/src/EventParser.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/src/EventParser.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/src/EventParser.c.o.provides

CMakeFiles/event-parser.dir/src/EventParser.c.o.provides.build: CMakeFiles/event-parser.dir/src/EventParser.c.o

CMakeFiles/event-parser.dir/tests/test_de.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/tests/test_de.c.o: tests/test_de.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/tests/test_de.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/tests/test_de.c.o   -c /home/mario/dev/vala/event-parser/build/tests/test_de.c

CMakeFiles/event-parser.dir/tests/test_de.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/tests/test_de.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/tests/test_de.c > CMakeFiles/event-parser.dir/tests/test_de.c.i

CMakeFiles/event-parser.dir/tests/test_de.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/tests/test_de.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/tests/test_de.c -o CMakeFiles/event-parser.dir/tests/test_de.c.s

CMakeFiles/event-parser.dir/tests/test_de.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/tests/test_de.c.o.requires

CMakeFiles/event-parser.dir/tests/test_de.c.o.provides: CMakeFiles/event-parser.dir/tests/test_de.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/tests/test_de.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/tests/test_de.c.o.provides

CMakeFiles/event-parser.dir/tests/test_de.c.o.provides.build: CMakeFiles/event-parser.dir/tests/test_de.c.o

CMakeFiles/event-parser.dir/tests/test_en.c.o: CMakeFiles/event-parser.dir/flags.make
CMakeFiles/event-parser.dir/tests/test_en.c.o: tests/test_en.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mario/dev/vala/event-parser/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/event-parser.dir/tests/test_en.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/event-parser.dir/tests/test_en.c.o   -c /home/mario/dev/vala/event-parser/build/tests/test_en.c

CMakeFiles/event-parser.dir/tests/test_en.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event-parser.dir/tests/test_en.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mario/dev/vala/event-parser/build/tests/test_en.c > CMakeFiles/event-parser.dir/tests/test_en.c.i

CMakeFiles/event-parser.dir/tests/test_en.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event-parser.dir/tests/test_en.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mario/dev/vala/event-parser/build/tests/test_en.c -o CMakeFiles/event-parser.dir/tests/test_en.c.s

CMakeFiles/event-parser.dir/tests/test_en.c.o.requires:
.PHONY : CMakeFiles/event-parser.dir/tests/test_en.c.o.requires

CMakeFiles/event-parser.dir/tests/test_en.c.o.provides: CMakeFiles/event-parser.dir/tests/test_en.c.o.requires
	$(MAKE) -f CMakeFiles/event-parser.dir/build.make CMakeFiles/event-parser.dir/tests/test_en.c.o.provides.build
.PHONY : CMakeFiles/event-parser.dir/tests/test_en.c.o.provides

CMakeFiles/event-parser.dir/tests/test_en.c.o.provides.build: CMakeFiles/event-parser.dir/tests/test_en.c.o

# Object files for target event-parser
event__parser_OBJECTS = \
"CMakeFiles/event-parser.dir/src/parser_en.c.o" \
"CMakeFiles/event-parser.dir/src/event.c.o" \
"CMakeFiles/event-parser.dir/src/tests.c.o" \
"CMakeFiles/event-parser.dir/src/EventParser.c.o" \
"CMakeFiles/event-parser.dir/tests/test_de.c.o" \
"CMakeFiles/event-parser.dir/tests/test_en.c.o"

# External object files for target event-parser
event__parser_EXTERNAL_OBJECTS =

event-parser: CMakeFiles/event-parser.dir/src/parser_en.c.o
event-parser: CMakeFiles/event-parser.dir/src/event.c.o
event-parser: CMakeFiles/event-parser.dir/src/tests.c.o
event-parser: CMakeFiles/event-parser.dir/src/EventParser.c.o
event-parser: CMakeFiles/event-parser.dir/tests/test_de.c.o
event-parser: CMakeFiles/event-parser.dir/tests/test_en.c.o
event-parser: CMakeFiles/event-parser.dir/build.make
event-parser: CMakeFiles/event-parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable event-parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/event-parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/event-parser.dir/build: event-parser
.PHONY : CMakeFiles/event-parser.dir/build

CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/src/parser_en.c.o.requires
CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/src/event.c.o.requires
CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/src/tests.c.o.requires
CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/src/EventParser.c.o.requires
CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/tests/test_de.c.o.requires
CMakeFiles/event-parser.dir/requires: CMakeFiles/event-parser.dir/tests/test_en.c.o.requires
.PHONY : CMakeFiles/event-parser.dir/requires

CMakeFiles/event-parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/event-parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/event-parser.dir/clean

CMakeFiles/event-parser.dir/depend: src/parser_en.c
CMakeFiles/event-parser.dir/depend: src/event.c
CMakeFiles/event-parser.dir/depend: src/tests.c
CMakeFiles/event-parser.dir/depend: src/EventParser.c
CMakeFiles/event-parser.dir/depend: tests/test_de.c
CMakeFiles/event-parser.dir/depend: tests/test_en.c
CMakeFiles/event-parser.dir/depend: event-parser_valac.stamp
	cd /home/mario/dev/vala/event-parser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mario/dev/vala/event-parser /home/mario/dev/vala/event-parser /home/mario/dev/vala/event-parser/build /home/mario/dev/vala/event-parser/build /home/mario/dev/vala/event-parser/build/CMakeFiles/event-parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/event-parser.dir/depend

