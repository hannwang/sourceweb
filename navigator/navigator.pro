include(../config.pri)

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets concurrent

TARGET = CxxCodeBrowser
TEMPLATE = app

SOURCES += \
    Application.cpp \
    CXXSyntaxHighlighter.cc \
    File.cc \
    FileManager.cc \
    FindBar.cc \
    Folder.cc \
    FolderItem.cc \
    FolderWidget.cc \
    History.cc \
    MainWindow.cc \
    Misc.cc \
    PlaceholderLineEdit.cc \
    Project.cc \
    Ref.cc \
    Regex.cc \
    RegexMatchList.cc \
    ReportDefList.cc \
    ReportFileList.cc \
    ReportRefList.cc \
    ReportSymList.cc \
    SourceWidget.cc \
    TableReport.cc \
    TableReportView.cc \
    TableReportWindow.cc \
    TextWidthCalculator.cc \
    main.cc

HEADERS += \
    Application.h \
    CXXSyntaxHighlighter.h \
    CXXSyntaxHighlighterDirectives.h \
    CXXSyntaxHighlighterKeywords.h \
    File.h \
    FileManager.h \
    FindBar.h \
    Folder.h \
    FolderItem.h \
    FolderWidget.h \
    History.h \
    MainWindow.h \
    Misc.h \
    PlaceholderLineEdit.h \
    Project.h \
    Project-inl.h \
    RandomAccessIterator.h \
    Ref.h \
    Regex.h \
    RegexMatchList.h \
    ReportDefList.h \
    ReportFileList.h \
    ReportRefList.h \
    ReportSymList.h \
    SourceWidget.h \
    StringRef.h \
    TableReport.h \
    TableReportView.h \
    TableReportWindow.h \
    TextWidthCalculator.h

OTHER_FILES += \
    dependencies.cfg

FORMS += \
    MainWindow.ui

ROOT_DIR = ..
include(../add_dependencies.pri)

target.path = $$BIN_DIR
INSTALLS += target

include(../enable-cxx11.pri)
QMAKE_CXXFLAGS_WARN_ON += -Wall -Wno-unused-parameter -Wno-uninitialized
QMAKE_CXXFLAGS += -Wno-reserved-user-defined-literal

RESOURCES += \
    navigator.qrc
