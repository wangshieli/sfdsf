CONFIG      += plugin debug_and_release
TARGET      = $$qtLibraryTarget(qmcustom_ctlplugin)
TEMPLATE    = lib

HEADERS     = qmcustom_ctlplugin.h
SOURCES     = qmcustom_ctlplugin.cpp
RESOURCES   = icons.qrc
LIBS        += -L. 

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer
} else {
    CONFIG += designer
}

target.path = $$[QT_INSTALL_PLUGINS]/designer
INSTALLS    += target

include(qmcustom_ctl.pri)


CONFIG(debug, debug | release) {
    DESTDIR = $$PWD/../bin/debug
} else {
    DESTDIR = $$PWD/../bin/release
}
