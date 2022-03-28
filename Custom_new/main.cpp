#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
//    QFont ft;
//    ft.setFamily("宋体");
//    ft.setPointSize(20);
//    a.setFont(ft);
    MainWindow w;
    w.show();
    return a.exec();
}
