#include "process.h"
#include<string.h>
#include<fstream>
#include "iostream"
using namespace std;
Process::Process(QObject *parent) : QObject(parent)
{

}

void Process::receiveFromQml()
{
    string cmd="dmesg>/home/alex/untitled/dmesg.txt";
    system(cmd.c_str());
            ifstream fin("/home/alex/untitled/dmesg.txt");
            if(fin.is_open())
            {
                while(getline(fin,cmd))
                {
                    cmd1 = cmd1+ "\n"+QString::fromStdString(cmd);
                }
            }
            fin.close();
    emit sendToQml(cmd1);
            cmd1 = "";
}
void Process::receiveFromQml2()
{
    string device;
    ifstream fin("/proc/devices");
    if(fin.is_open())
    {
        while(getline(fin,device))
        {
            cmd2 = cmd2+ "\n"+QString::fromStdString(device);
        }

    }
    fin.close();
emit sendToQml2(cmd2);
    cmd2 ="";
}
void Process::receiveFromQml3()
{
    string cpuinfo;
    ifstream fin("/proc/cpuinfo");
    if(fin.is_open())
    {
        while(getline(fin,cpuinfo))
        {
            cmd3 = cmd3+ "\n"+QString::fromStdString(cpuinfo);
        }

    }
    fin.close();
emit sendToQml3(cmd3);
    cmd3 = "";
}
void Process::receiveFromQml4()
{
    string device;
    ifstream fin("/proc/meminfo");
    if(fin.is_open())
    {
        while(getline(fin,device))
        {
            cmd4 = cmd4+"\n"+QString::fromStdString(device);
        }

    }
    fin.close();
emit sendToQml4(cmd4);
    cmd4 = "";
}

void Process::receiveFromQml5(QString number)
{
   //QDebug()<<"number";
}
void Process::lab31slot()
{
    system("xdotool key Caps_Lock && xdotool key --delay 6000 Caps_Lock");

    system("xdotool key Caps_Lock && xdotool key Num_Lock");
}

void Process::lab32slot()
{
    string led = "xset q | grep LED>/home/alex/untitled/LED.txt";
    system(led.c_str());

    ifstream fin("/home/alex/untitled/LED.txt");

    if (fin.is_open())
    {
        while (getline(fin, led))
        {
            led1=cmd1+QString::fromStdString(led.erase(0,62));
        }
    }

    fin.close();
    emit lab32signal(led1);
    led1="";
}

void Process::lab33slot()
{

    system("xdotool key Num_Lock");

    system("xdotool key Caps_Lock");
}

