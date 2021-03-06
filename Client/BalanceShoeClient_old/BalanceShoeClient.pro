QT += core gui
QT += widgets
QT += bluetooth
#QT += virtualkeyboard

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


FORMS +=

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

android: QT += androidextras

DISTFILES += \
    android-sources/AndroidManifest.xml \
    styles/AMOLED.qss \
    styles/Aqua.qss \
    styles/ConsoleStyle.qss \
    styles/Darkeum.qss \
    styles/Devsion.qss \
    styles/Diffnes.qss \
    styles/ElegantDark.qss \
    styles/LICENSE \
    styles/MaterialDark.qss \
    styles/SpyBot.qss \
    styles/Ubuntu.qss

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-sources

RESOURCES += \
    themes.qrc \
    themes.qrc \
    themes.qrc \
    themes.qrc \
    themes.qrc \
    themes.qrc

HEADERS += \
    core/bluetoothhandler.h \
    core/usersettings.h \
    core/windowhandler.h \
    pages/Android/androidintropage.h \
    pages/Android/androidmainpage.h \
    pages/Android/androidsettingspage.h \
    pages/Android/androidusersettingspage.h \
    pages/Mac/macintropage.h \
    pages/Mac/macmainpage.h \
    pages/Mac/macsettingspage.h \
    pages/Mac/macusersettingspage.h \
    pages/intropage.h \
    pages/ios/iosintropage.h \
    pages/ios/iosmainpage.h \
    pages/ios/iossettingspage.h \
    pages/ios/iosusersettingspage.h \
    pages/mainpage.h \
    pages/settingspage.h \
    pages/usersettingsPage.h \
    pages/windows/winintropage.h \
    pages/windows/winmainpage.h \
    pages/windows/winsettingspage.h \
    pages/windows/winusersettingspage.h \
    util/bluetoothutil.h \
    util/filehandler.h \
    util/utils.h \
    util/vibrator.h \
    widgets/customlineedit.h

SOURCES += \
    core/bluetoothhandler.cpp \
    core/usersettings.cpp \
    core/windowhandler.cpp \
    main.cpp \
    pages/Android/androidintropage.cpp \
    pages/Android/androidmainpage.cpp \
    pages/Android/androidsettingspage.cpp \
    pages/Android/androidusersettingspage.cpp \
    pages/Mac/macintropage.cpp \
    pages/Mac/macmainpage.cpp \
    pages/Mac/macsettingspage.cpp \
    pages/Mac/macusersettingspage.cpp \
    pages/ios/iosintropage.cpp \
    pages/ios/iosmainpage.cpp \
    pages/ios/iossettingspage.cpp \
    pages/ios/iosusersettingspage.cpp \
    pages/windows/winintropage.cpp \
    pages/windows/winmainpage.cpp \
    pages/windows/winsettingspage.cpp \
    pages/windows/winusersettingspage.cpp \
    util/bluetoothutil.cpp \
    util/filehandler.cpp \
    util/vibrator.cpp \
    widgets/customlineedit.cpp
