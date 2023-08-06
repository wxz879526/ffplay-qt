QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.c \
    G:\code\shiftmedia\source\FFmpeg\fftools\opt_common.c \
    G:\code\shiftmedia\source\FFmpeg\fftools\cmdutils.c


HEADERS += \
    G:\code\shiftmedia\source\FFmpeg\fftools\opt_common.h \
    G:\code\shiftmedia\source\FFmpeg\fftools\cmdutils.h \
    G:\code\shiftmedia\source\FFmpeg\SMP\config.h

win32:CONFIG(debug, debug|release) {
    INCLUDEPATH += G:\code\shiftmedia\msvc\include \
    G:\code\shiftmedia\source\FFmpeg \
    G:\code\shiftmedia\source\FFmpeg\fftools \
    G:\code\shiftmedia\source\FFmpeg\SMP

    LIBS += -LG:\code\shiftmedia\msvc\lib\x64 \
         -llibavformatd \
         -llibavcodecd \
         -llibavutild \
         -llibavdeviced \
         -llibavfilterd \
         -llibswresampled\
         -llibswscaled \
         -llibpostprocd \
         -llibsdl2d \
         -lAdvapi32 \
         -lUser32 \
         -lOleAut32 \
         -lGdi32
}

else:win32:CONFIG(release, debug|release) {
}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
