#ifndef APPCORE_H
#define APPCORE_H
//#include <QQmlContext>
#include <QObject>
#include <QDebug>
#include <string.h>

using namespace std;

class AppCore : public QObject
{
    Q_OBJECT

public:
    explicit AppCore(QObject *parent = nullptr);

public: signals:
    void sendToQml(QString cmd1);
    void plusSignal(int count);
    void cpuInfoSignal(QString cpuInfo);
    void devicesSignal(QString devices);
    void memInfoSignal(QString memInfo);
    void lab31Signal();
    void lab32Signal(QString led1);
    void lab33Signal();

public slots:
    void receiveFromQml();
    void plusSlot();
    void cpuInfoSlot();
    void devicesSlot();
    void memInfoSlot();
    void lab31Slot();
    void lab32Slot();
    void lab33Slot();

public:
    QString cmd1;
    int count;
    QString cpuInfo;
    QString devices;
    QString memInfo;
    QString led1;

};

#endif // APPCORE_H
