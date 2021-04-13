#ifndef PROCESS_H
#define PROCESS_H
#include <QObject>
#include <QString>
#include<QProcess>
#include"process.h"
#include<QQmlContext>
class Process : public QObject
{
    Q_OBJECT
public:
    explicit Process(QObject *parent = 0);
signals:
    void sendToQml(QString cmd1);
    void sendToQml2(QString cmd2);
   void sendToQml3(QString cmd3);
    void sendToQml4(QString cmd4);
    void sendToQml5();
    void lab31signal();
    void lab32signal(QString led1);
    void lab33signal();
public slots:
    void receiveFromQml();
    void receiveFromQml2();
    void receiveFromQml3();
    void receiveFromQml4();
    void receiveFromQml5(QString number);
    void lab31slot();
    void lab32slot();
    void lab33slot();

private:
    QString cmd1;
    QString cmd2;
    QString cmd3;
    QString cmd4;
    QString led1;
};

#endif // PROCESS_H
