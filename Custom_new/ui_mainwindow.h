/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QPushButton *btn_base01;
    QLabel *label_msg;
    QTextEdit *textEdit_printer_info;
    QTextEdit *LeftOff;
    QTextEdit *TopOff;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QTextEdit *textEdit_Margins;
    QPushButton *Btn_Print02;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(800, 600);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        btn_base01 = new QPushButton(centralwidget);
        btn_base01->setObjectName(QStringLiteral("btn_base01"));
        btn_base01->setGeometry(QRect(0, 0, 112, 34));
        label_msg = new QLabel(centralwidget);
        label_msg->setObjectName(QStringLiteral("label_msg"));
        label_msg->setGeometry(QRect(10, 120, 781, 101));
        label_msg->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignTop);
        textEdit_printer_info = new QTextEdit(centralwidget);
        textEdit_printer_info->setObjectName(QStringLiteral("textEdit_printer_info"));
        textEdit_printer_info->setGeometry(QRect(10, 250, 781, 281));
        LeftOff = new QTextEdit(centralwidget);
        LeftOff->setObjectName(QStringLiteral("LeftOff"));
        LeftOff->setGeometry(QRect(460, 0, 51, 31));
        TopOff = new QTextEdit(centralwidget);
        TopOff->setObjectName(QStringLiteral("TopOff"));
        TopOff->setGeometry(QRect(600, 0, 61, 31));
        label = new QLabel(centralwidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(390, 0, 61, 18));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(520, 0, 51, 18));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(680, 0, 91, 18));
        textEdit_Margins = new QTextEdit(centralwidget);
        textEdit_Margins->setObjectName(QStringLiteral("textEdit_Margins"));
        textEdit_Margins->setGeometry(QRect(450, 40, 261, 31));
        Btn_Print02 = new QPushButton(centralwidget);
        Btn_Print02->setObjectName(QStringLiteral("Btn_Print02"));
        Btn_Print02->setGeometry(QRect(130, 0, 112, 34));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 26));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        btn_base01->setText(QApplication::translate("MainWindow", "\346\211\223\345\215\26001", 0));
        label_msg->setText(QString());
        label->setText(QApplication::translate("MainWindow", "\345\267\246\350\276\271\350\267\235\357\274\232", 0));
        label_2->setText(QApplication::translate("MainWindow", "\344\270\212\350\276\271\350\267\235\357\274\232", 0));
        label_3->setText(QApplication::translate("MainWindow", "\345\215\225\344\275\215\357\274\2320.1mm", 0));
        Btn_Print02->setText(QApplication::translate("MainWindow", "\347\233\264\346\216\245\346\211\223\345\215\260", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
