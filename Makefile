#############################################################################
# Makefile for building: Dpy_Printer
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  Dpy_Printer.pro
# Template: subdirs
# Command: D:\Mr.Software\Qt\Qt5.5.1\5.5\mingw492_32\bin\qmake.exe -spec win32-g++ -o Makefile Dpy_Printer.pro
#############################################################################

MAKEFILE      = Makefile

first: make_first
QMAKE         = D:\Mr.Software\Qt\Qt5.5.1\5.5\mingw492_32\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		sub-Custom \
		sub-Custom_ctl \
		sub-Custom_new


sub-Custom-qmake_all:  FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile
	cd Custom\ && $(MAKE) -f Makefile qmake_all
sub-Custom: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile
sub-Custom-make_first: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile 
sub-Custom-all: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile all
sub-Custom-clean: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile clean
sub-Custom-distclean: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile distclean
sub-Custom-install_subtargets: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile install
sub-Custom-uninstall_subtargets: FORCE
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-Custom_ctl-qmake_all:  FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile
	cd Custom_ctl\ && $(MAKE) -f Makefile qmake_all
sub-Custom_ctl: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile
sub-Custom_ctl-make_first: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile 
sub-Custom_ctl-all: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile all
sub-Custom_ctl-clean: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile clean
sub-Custom_ctl-distclean: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile distclean
sub-Custom_ctl-install_subtargets: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile install
sub-Custom_ctl-uninstall_subtargets: FORCE
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-Custom_new-qmake_all:  FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile
	cd Custom_new\ && $(MAKE) -f Makefile qmake_all
sub-Custom_new: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile
sub-Custom_new-make_first: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile 
sub-Custom_new-all: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile all
sub-Custom_new-clean: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile clean
sub-Custom_new-distclean: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile distclean
sub-Custom_new-install_subtargets: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile install
sub-Custom_new-uninstall_subtargets: FORCE
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile uninstall

Makefile: Dpy_Printer.pro ../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/win32-g++/qmake.conf ../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/spec_pre.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/qdevice.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/device_config.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/qconfig.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcollision.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcollision_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcore.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcore_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dinput.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dinput_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dlogic.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dlogic_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquick.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquick_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquickrenderer.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquickrenderer_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3drenderer.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3drenderer_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axbase.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axbase_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axcontainer.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axcontainer_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axserver.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axserver_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bluetooth.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_clucene_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_concurrent.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_core.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_core_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_dbus.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_dbus_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_declarative.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_declarative_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designer.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designer_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_enginio.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_enginio_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_gui.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_gui_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_help.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_help_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_location.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_location_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimedia.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_network.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_network_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_nfc.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_nfc_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_opengl.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_opengl_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_openglextensions.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_positioning.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_positioning_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_printsupport.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qml.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qml_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmltest.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quick.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quick_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_script.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_script_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_scripttools.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sensors.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sensors_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_serialport.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_serialport_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sql.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sql_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_svg.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_svg_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_testlib.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_testlib_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uiplugin.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uitools.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uitools_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webchannel.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webchannel_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkit.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkit_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkitwidgets.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_websockets.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_websockets_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_widgets.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_widgets_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_winextras.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_winextras_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xml.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xml_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/qt_functions.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/qt_config.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/qt_config.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/win32-g++/qmake.conf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/spec_post.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exclusive_builds.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/default_pre.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/default_pre.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/resolve_config.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exclusive_builds_post.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/default_post.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/rtti.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/precompile_header.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/warn_on.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/windows.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/testcase_targets.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exceptions.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/yacc.prf \
		../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/lex.prf \
		Dpy_Printer.pro
	$(QMAKE) -spec win32-g++ -o Makefile Dpy_Printer.pro
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/spec_pre.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/qdevice.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/device_config.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/qconfig.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcollision.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcollision_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcore.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dcore_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dinput.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dinput_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dlogic.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dlogic_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquick.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquick_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquickrenderer.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3dquickrenderer_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3drenderer.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_3drenderer_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axbase.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axbase_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axcontainer.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axcontainer_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axserver.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_axserver_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bluetooth.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_clucene_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_concurrent.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_concurrent_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_core.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_core_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_dbus.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_dbus_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_declarative.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_declarative_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designer.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designer_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_enginio.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_enginio_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_gui.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_gui_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_help.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_help_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_location.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_location_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimedia.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimedia_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_network.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_network_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_nfc.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_nfc_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_opengl.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_opengl_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_openglextensions.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_positioning.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_positioning_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_printsupport.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_printsupport_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qml.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qml_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmltest.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qmltest_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quick.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quick_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickwidgets.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_script.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_script_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_scripttools.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_scripttools_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sensors.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sensors_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_serialport.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_serialport_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sql.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_sql_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_svg.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_svg_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_testlib.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_testlib_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uiplugin.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uitools.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_uitools_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webchannel.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webchannel_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkit.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkit_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkitwidgets.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_websockets.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_websockets_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_widgets.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_widgets_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_winextras.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_winextras_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xml.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xml_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/qt_functions.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/qt_config.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/qt_config.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/win32-g++/qmake.conf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/spec_post.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exclusive_builds.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/default_pre.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/default_pre.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/resolve_config.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exclusive_builds_post.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/default_post.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/rtti.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/precompile_header.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/warn_on.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/win32/windows.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/testcase_targets.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/exceptions.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/yacc.prf:
../../Mr.Software/Qt/Qt5.5.1/5.5/mingw492_32/mkspecs/features/lex.prf:
Dpy_Printer.pro:
qmake: FORCE
	@$(QMAKE) -spec win32-g++ -o Makefile Dpy_Printer.pro

qmake_all: sub-Custom-qmake_all sub-Custom_ctl-qmake_all sub-Custom_new-qmake_all FORCE

make_first: sub-Custom-make_first sub-Custom_ctl-make_first sub-Custom_new-make_first  FORCE
all: sub-Custom-all sub-Custom_ctl-all sub-Custom_new-all  FORCE
clean: sub-Custom-clean sub-Custom_ctl-clean sub-Custom_new-clean  FORCE
distclean: sub-Custom-distclean sub-Custom_ctl-distclean sub-Custom_new-distclean  FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-Custom-install_subtargets sub-Custom_ctl-install_subtargets sub-Custom_new-install_subtargets FORCE
uninstall_subtargets: sub-Custom-uninstall_subtargets sub-Custom_ctl-uninstall_subtargets sub-Custom_new-uninstall_subtargets FORCE

sub-Custom-debug:
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile debug
sub-Custom_ctl-debug:
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile debug
sub-Custom_new-debug:
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile debug
debug: sub-Custom-debug sub-Custom_ctl-debug sub-Custom_new-debug

sub-Custom-release:
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile release
sub-Custom_ctl-release:
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile release
sub-Custom_new-release:
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile release
release: sub-Custom-release sub-Custom_ctl-release sub-Custom_new-release

sub-Custom-check:
	@if not exist Custom\ mkdir Custom\ & if not exist Custom\ exit 1
	cd Custom\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom\Custom.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile check
sub-Custom_ctl-check:
	@if not exist Custom_ctl\ mkdir Custom_ctl\ & if not exist Custom_ctl\ exit 1
	cd Custom_ctl\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_ctl\Custom_ctl.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile check
sub-Custom_new-check:
	@if not exist Custom_new\ mkdir Custom_new\ & if not exist Custom_new\ exit 1
	cd Custom_new\ && ( if not exist Makefile $(QMAKE) D:\Mr.Code\Dpy_Printer\Custom_new\Custom_new.pro -spec win32-g++ -o Makefile ) && $(MAKE) -f Makefile check
check: sub-Custom-check sub-Custom_ctl-check sub-Custom_new-check
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

