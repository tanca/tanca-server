
# ------------------------------------------------------------------------------
# QMAKE CONFIG
# ------------------------------------------------------------------------------
TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += icl_database icl_zip
TARGET = tanca-server

# ------------------------------------------------------------------------------
# OUTPUT DIRECTORIES
# ------------------------------------------------------------------------------
BASE_DIR = $${PWD}

CONFIG(debug, debug|release) {
debug:      DESTDIR = $$BASE_DIR/build-tanca-server/debug

}

CONFIG(release, debug|release) {
release:    DESTDIR = $$BASE_DIR/build-tanca-server/release
#QMAKE_CXXFLAGS += -g
}

UI_DIR          = $$DESTDIR/ui
UI_HEADERS_DIR  = $$DESTDIR/include
UI_SOURCES_DIR  = $$DESTDIR/src
OBJECTS_DIR     = $$DESTDIR/obj
RCC_DIR         = $$DESTDIR/rcc
MOC_DIR         = $$DESTDIR/moc

# ------------------------------------------------------------------------------
# ICL
# ------------------------------------------------------------------------------

#CONFIG += ICL_DB

ICL_DIR = $$BASE_DIR/icl
include($$ICL_DIR/icl.pri)

# ------------------------------------------------------------------------------
# APPLICATION FILES
# ------------------------------------------------------------------------------
VPATH += src
INCLUDEPATH += src
SOURCES += main.cpp \
    src/TancaServer.cpp

HEADERS += \
    src/TancaServer.h

