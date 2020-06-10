# Install script for directory: /admin/SiFuh/faust/faust-2.14.4/build

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/faust" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/faust")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/faust"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/faust")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/admin/SiFuh/faust/faust-2.14.4/build/bin/faust")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/faust" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/faust")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/faust")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/faust/au;/usr/local/include/faust/audio;/usr/local/include/faust/dsp;/usr/local/include/faust/gui;/usr/local/include/faust/midi;/usr/local/include/faust/unity;/usr/local/include/faust/vst")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/faust" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ DIR_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/au"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/audio"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/dsp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/gui"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/midi"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/unity"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/vst"
    REGEX "/\\.DS\\_Store$" EXCLUDE REGEX "/[^/]*\\.o$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/faust/misc.h;/usr/local/include/faust/sound-file.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/faust" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/misc.h"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust/sound-file.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/faust/dsp/libfaust.h;/usr/local/include/faust/dsp/libfaust-c.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/faust/dsp" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/admin/SiFuh/faust/faust-2.14.4/compiler/generator/libfaust.h"
    "/admin/SiFuh/faust/faust-2.14.4/compiler/generator/libfaust-c.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/faust/gui/HTTPDControler.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/faust/gui" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/admin/SiFuh/faust/faust-2.14.4/architecture/httpdlib/src/include/HTTPDControler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/encoderunitypackage;/usr/local/bin/faust2alqt;/usr/local/bin/faust2alsa;/usr/local/bin/faust2alsaconsole;/usr/local/bin/faust2android;/usr/local/bin/faust2androidunity;/usr/local/bin/faust2api;/usr/local/bin/faust2asmjs;/usr/local/bin/faust2atomsnippets;/usr/local/bin/faust2au;/usr/local/bin/faust2bela;/usr/local/bin/faust2caqt;/usr/local/bin/faust2caqtios;/usr/local/bin/faust2csound;/usr/local/bin/faust2csvplot;/usr/local/bin/faust2dssi;/usr/local/bin/faust2dummy;/usr/local/bin/faust2dummymem;/usr/local/bin/faust2eps;/usr/local/bin/faust2faustvst;/usr/local/bin/faust2firefox;/usr/local/bin/faust2gen;/usr/local/bin/faust2graph;/usr/local/bin/faust2graphviewer;/usr/local/bin/faust2ios;/usr/local/bin/faust2jack;/usr/local/bin/faust2jackconsole;/usr/local/bin/faust2jackinternal;/usr/local/bin/faust2jackrust;/usr/local/bin/faust2jackserver;/usr/local/bin/faust2jaqt;/usr/local/bin/faust2jaqtchain;/usr/local/bin/faust2javaswing;/usr/local/bin/faust2juce;/usr/local/bin/faust2ladspa;/usr/local/bin/faust2linuxunity;/usr/local/bin/faust2lv2;/usr/local/bin/faust2mathdoc;/usr/local/bin/faust2mathviewer;/usr/local/bin/faust2max6;/usr/local/bin/faust2md;/usr/local/bin/faust2msp;/usr/local/bin/faust2netjackconsole;/usr/local/bin/faust2netjackqt;/usr/local/bin/faust2nodejs;/usr/local/bin/faust2octave;/usr/local/bin/faust2osxiosunity;/usr/local/bin/faust2owl;/usr/local/bin/faust2paqt;/usr/local/bin/faust2pdf;/usr/local/bin/faust2plot;/usr/local/bin/faust2png;/usr/local/bin/faust2portaudiorust;/usr/local/bin/faust2pure;/usr/local/bin/faust2puredata;/usr/local/bin/faust2raqt;/usr/local/bin/faust2ros;/usr/local/bin/faust2rosgtk;/usr/local/bin/faust2rpialsaconsole;/usr/local/bin/faust2rpinetjackconsole;/usr/local/bin/faust2sam;/usr/local/bin/faust2sig;/usr/local/bin/faust2sigviewer;/usr/local/bin/faust2smartkeyb;/usr/local/bin/faust2sndfile;/usr/local/bin/faust2supercollider;/usr/local/bin/faust2svg;/usr/local/bin/faust2unity;/usr/local/bin/faust2vst;/usr/local/bin/faust2vsti;/usr/local/bin/faust2w32max6;/usr/local/bin/faust2w32msp;/usr/local/bin/faust2w32puredata;/usr/local/bin/faust2w32vst;/usr/local/bin/faust2w64max6;/usr/local/bin/faust2wasm;/usr/local/bin/faust2webaudio;/usr/local/bin/faust2webaudioasm;/usr/local/bin/faust2webaudiowasm;/usr/local/bin/faust2webaudiowast;/usr/local/bin/faust2winunity;/usr/local/bin/faust2sc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_EXECUTE WORLD_READ FILES
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/encoderunitypackage"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2alqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2alsa"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2alsaconsole"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2android"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2androidunity"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2api"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2asmjs"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2atomsnippets"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2au"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2bela"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2caqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2caqtios"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2csound"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2csvplot"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2dssi"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2dummy"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2dummymem"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2eps"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2faustvst"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2firefox"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2gen"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2graph"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2graphviewer"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2ios"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jack"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jackconsole"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jackinternal"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jackrust"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jackserver"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jaqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2jaqtchain"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2javaswing"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2juce"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2ladspa"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2linuxunity"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2lv2"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2mathdoc"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2mathviewer"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2max6"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2md"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2msp"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2netjackconsole"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2netjackqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2nodejs"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2octave"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2osxiosunity"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2owl"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2paqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2pdf"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2plot"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2png"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2portaudiorust"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2pure"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2puredata"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2raqt"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2ros"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2rosgtk"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2rpialsaconsole"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2rpinetjackconsole"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2sam"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2sig"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2sigviewer"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2smartkeyb"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2sndfile"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2supercollider"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2svg"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2unity"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2vst"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2vsti"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2w32max6"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2w32msp"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2w32puredata"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2w32vst"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2w64max6"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2wasm"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2webaudio"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2webaudioasm"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2webaudiowasm"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2webaudiowast"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faust2winunity"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2sc-1.0.0/faust2sc"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/faustoptflags;/usr/local/bin/faustpath")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_EXECUTE WORLD_READ FILES
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faustoptflags"
    "/admin/SiFuh/faust/faust-2.14.4/tools/faust2appls/faustpath"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/sound2reader")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE FILE OPTIONAL PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_EXECUTE WORLD_READ FILES "/admin/SiFuh/faust/faust-2.14.4/tools/sound2faust/sound2reader")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/man/man1/faust.1")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/man/man1" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/admin/SiFuh/faust/faust-2.14.4/documentation/man/man1/faust.1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/faust/js/jsscripts.js")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/faust/js" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ RENAME "jsscripts.js" FILES "/admin/SiFuh/faust/faust-2.14.4/architecture/httpdlib/src/hexa/jsscripts")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/faust/js/stylesheet.js")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/faust/js" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ RENAME "stylesheet.js" FILES "/admin/SiFuh/faust/faust-2.14.4/architecture/httpdlib/src/hexa/stylesheet")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/faust/alchemy-as.cpp;/usr/local/share/faust/alsa-console.cpp;/usr/local/share/faust/alsa-gtk.cpp;/usr/local/share/faust/alsa-qt.cpp;/usr/local/share/faust/au-effect.cpp;/usr/local/share/faust/au-instrument.cpp;/usr/local/share/faust/bela.cpp;/usr/local/share/faust/bench.cpp;/usr/local/share/faust/c-jack-gtk.c;/usr/local/share/faust/ca-qt.cpp;/usr/local/share/faust/csound.cpp;/usr/local/share/faust/csvplot.cpp;/usr/local/share/faust/dssi.cpp;/usr/local/share/faust/dummy-mem.cpp;/usr/local/share/faust/dummy.cpp;/usr/local/share/faust/faust-llvm.cpp;/usr/local/share/faust/faust-netjack-gtk.cpp;/usr/local/share/faust/faustui.js;/usr/local/share/faust/faustvst.cpp;/usr/local/share/faust/faustvstqt.h;/usr/local/share/faust/gen-json.cpp;/usr/local/share/faust/iOSKeyboard.cpp;/usr/local/share/faust/ios-coreaudio-jack.cpp;/usr/local/share/faust/ios-coreaudio.cpp;/usr/local/share/faust/jack-console.cpp;/usr/local/share/faust/jack-gtk-ros.cpp;/usr/local/share/faust/jack-gtk.cpp;/usr/local/share/faust/jack-internal.cpp;/usr/local/share/faust/jack-qt-chain-footer.cpp;/usr/local/share/faust/jack-qt-chain-header.cpp;/usr/local/share/faust/jack-qt.cpp;/usr/local/share/faust/jack-ros.cpp;/usr/local/share/faust/java-minimal.java;/usr/local/share/faust/java-swing.java;/usr/local/share/faust/ladspa.cpp;/usr/local/share/faust/latexheader.tex;/usr/local/share/faust/llvm-jack-gtk.cpp;/usr/local/share/faust/lv2.cpp;/usr/local/share/faust/lv2qtgui.h;/usr/local/share/faust/lv2ui.cpp;/usr/local/share/faust/mathdoctexts-de.txt;/usr/local/share/faust/mathdoctexts-default.txt;/usr/local/share/faust/mathdoctexts-en.txt;/usr/local/share/faust/mathdoctexts-fr.txt;/usr/local/share/faust/mathdoctexts-it.txt;/usr/local/share/faust/matlabplot.cpp;/usr/local/share/faust/minimal-effect.cpp;/usr/local/share/faust/minimal-jack.rs;/usr/local/share/faust/minimal-portaudio.rs;/usr/local/share/faust/minimal.c;/usr/local/share/faust/minimal.cpp;/usr/local/share/faust/minimal.rs;/usr/local/share/faust/module.cpp;/usr/local/share/faust/mr-plot.cpp;/usr/local/share/faust/ms-jack-gtk.cpp;/usr/local/share/faust/netjack-console.cpp;/usr/local/share/faust/netjack-qt.cpp;/usr/local/share/faust/octave.cpp;/usr/local/share/faust/old-scheduler.cpp;/usr/local/share/faust/oscio-gtk.cpp;/usr/local/share/faust/oscio-qt.cpp;/usr/local/share/faust/oss-gtk.cpp;/usr/local/share/faust/owl.cpp;/usr/local/share/faust/pa-gtk.cpp;/usr/local/share/faust/pa-qt.cpp;/usr/local/share/faust/path-printer.cpp;/usr/local/share/faust/plot.cpp;/usr/local/share/faust/pure.c;/usr/local/share/faust/pure.cpp;/usr/local/share/faust/puredata.cpp;/usr/local/share/faust/q.cpp;/usr/local/share/faust/ra-qt.cpp;/usr/local/share/faust/ros-callbacks.cpp;/usr/local/share/faust/scheduler.cpp;/usr/local/share/faust/snd-rt-gtk.cpp;/usr/local/share/faust/sndfile.cpp;/usr/local/share/faust/supercollider.cpp;/usr/local/share/faust/synthfile.cpp;/usr/local/share/faust/thread.h;/usr/local/share/faust/vst.cpp;/usr/local/share/faust/windowsdll.cpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/faust" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/admin/SiFuh/faust/faust-2.14.4/architecture/alchemy-as.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/alsa-console.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/alsa-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/alsa-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/au-effect.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/au-instrument.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/bela.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/bench.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/c-jack-gtk.c"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ca-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/csound.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/csvplot.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/dssi.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/dummy-mem.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/dummy.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust-llvm.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faust-netjack-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faustui.js"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faustvst.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/faustvstqt.h"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/gen-json.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/iOSKeyboard.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ios-coreaudio-jack.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ios-coreaudio.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-console.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-gtk-ros.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-internal.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-qt-chain-footer.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-qt-chain-header.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/jack-ros.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/java-minimal.java"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/java-swing.java"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ladspa.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/latexheader.tex"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/llvm-jack-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/lv2.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/lv2qtgui.h"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/lv2ui.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mathdoctexts-de.txt"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mathdoctexts-default.txt"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mathdoctexts-en.txt"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mathdoctexts-fr.txt"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mathdoctexts-it.txt"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/matlabplot.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal-effect.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal-jack.rs"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal-portaudio.rs"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal.c"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/minimal.rs"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/module.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/mr-plot.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ms-jack-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/netjack-console.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/netjack-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/octave.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/old-scheduler.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/oscio-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/oscio-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/oss-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/owl.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/pa-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/pa-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/path-printer.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/plot.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/pure.c"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/pure.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/puredata.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/q.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ra-qt.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/ros-callbacks.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/scheduler.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/snd-rt-gtk.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/sndfile.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/supercollider.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/synthfile.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/thread.h"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/vst.cpp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/windowsdll.cpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/faust/android;/usr/local/share/faust/api;/usr/local/share/faust/AU;/usr/local/share/faust/iOS;/usr/local/share/faust/juce;/usr/local/share/faust/max-msp;/usr/local/share/faust/nodejs;/usr/local/share/faust/osclib;/usr/local/share/faust/sam;/usr/local/share/faust/smartKeyboard;/usr/local/share/faust/unity;/usr/local/share/faust/webaudio;/usr/local/share/faust/js")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/faust" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ DIR_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/admin/SiFuh/faust/faust-2.14.4/architecture/android"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/api"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/AU"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/iOS"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/juce"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/max-msp"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/nodejs"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/osclib"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/sam"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/smartKeyboard"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/unity"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/webaudio"
    "/admin/SiFuh/faust/faust-2.14.4/architecture/httpdlib/html/js"
    REGEX "/\\.DS\\_Store$" EXCLUDE REGEX "/[^/]*\\.o$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/admin/SiFuh/faust/faust-2.14.4/build/faustdir/emcc/cmake_install.cmake")
  include("/admin/SiFuh/faust/faust-2.14.4/build/faustdir/osc/cmake_install.cmake")
  include("/admin/SiFuh/faust/faust-2.14.4/build/faustdir/http/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/admin/SiFuh/faust/faust-2.14.4/build/faustdir/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
