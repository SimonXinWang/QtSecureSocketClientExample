requires(qtHaveModule(network))

HEADERS   += certificateinfo.h \
             sslclient.h
SOURCES   += certificateinfo.cpp \
             main.cpp \
             sslclient.cpp
RESOURCES += securesocketclient.qrc
FORMS     += certificateinfo.ui \
             sslclient.ui \
             sslerrors.ui
QT        += network widgets
requires(qtConfig(listwidget))
requires(qtConfig(combobox))

LIBS += -L/usr/local/ssl -lcrypto -L/usr/local/ssl -lssl

# install
target.path = $$[QT_INSTALL_EXAMPLES]/network/securesocketclient
INSTALLS += target
