/********************************************************************************
** Form generated from reading UI file 'margins_dlg.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MARGINS_DLG_H
#define UI_MARGINS_DLG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpinBox>

QT_BEGIN_NAMESPACE

class Ui_Margins_Dlg
{
public:
    QLabel *label;
    QComboBox *comboBox_printer;
    QLabel *label_2;
    QLabel *label_3;
    QSpinBox *spinBox_left;
    QSpinBox *spinBox_top;
    QLabel *label_4;
    QLabel *label_5;
    QLabel *label_6;
    QLabel *label_7;
    QDoubleSpinBox *doubleSpinBox_l;
    QDoubleSpinBox *doubleSpinBox_t;
    QDoubleSpinBox *doubleSpinBox_r;
    QDoubleSpinBox *doubleSpinBox_b;

    void setupUi(QDialog *Margins_Dlg)
    {
        if (Margins_Dlg->objectName().isEmpty())
            Margins_Dlg->setObjectName(QStringLiteral("Margins_Dlg"));
        Margins_Dlg->resize(627, 495);
        label = new QLabel(Margins_Dlg);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(70, 40, 81, 18));
        comboBox_printer = new QComboBox(Margins_Dlg);
        comboBox_printer->setObjectName(QStringLiteral("comboBox_printer"));
        comboBox_printer->setGeometry(QRect(170, 40, 301, 24));
        label_2 = new QLabel(Margins_Dlg);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(80, 120, 81, 18));
        label_3 = new QLabel(Margins_Dlg);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(80, 170, 81, 18));
        spinBox_left = new QSpinBox(Margins_Dlg);
        spinBox_left->setObjectName(QStringLiteral("spinBox_left"));
        spinBox_left->setGeometry(QRect(160, 110, 53, 25));
        spinBox_top = new QSpinBox(Margins_Dlg);
        spinBox_top->setObjectName(QStringLiteral("spinBox_top"));
        spinBox_top->setGeometry(QRect(160, 170, 53, 25));
        label_4 = new QLabel(Margins_Dlg);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setGeometry(QRect(70, 250, 81, 18));
        label_5 = new QLabel(Margins_Dlg);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(280, 250, 81, 18));
        label_6 = new QLabel(Margins_Dlg);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setGeometry(QRect(60, 300, 81, 18));
        label_7 = new QLabel(Margins_Dlg);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setGeometry(QRect(270, 300, 81, 16));
        doubleSpinBox_l = new QDoubleSpinBox(Margins_Dlg);
        doubleSpinBox_l->setObjectName(QStringLiteral("doubleSpinBox_l"));
        doubleSpinBox_l->setGeometry(QRect(150, 250, 80, 25));
        doubleSpinBox_t = new QDoubleSpinBox(Margins_Dlg);
        doubleSpinBox_t->setObjectName(QStringLiteral("doubleSpinBox_t"));
        doubleSpinBox_t->setGeometry(QRect(370, 250, 80, 25));
        doubleSpinBox_r = new QDoubleSpinBox(Margins_Dlg);
        doubleSpinBox_r->setObjectName(QStringLiteral("doubleSpinBox_r"));
        doubleSpinBox_r->setGeometry(QRect(140, 300, 80, 25));
        doubleSpinBox_b = new QDoubleSpinBox(Margins_Dlg);
        doubleSpinBox_b->setObjectName(QStringLiteral("doubleSpinBox_b"));
        doubleSpinBox_b->setGeometry(QRect(370, 300, 80, 25));

        retranslateUi(Margins_Dlg);

        QMetaObject::connectSlotsByName(Margins_Dlg);
    } // setupUi

    void retranslateUi(QDialog *Margins_Dlg)
    {
        Margins_Dlg->setWindowTitle(QApplication::translate("Margins_Dlg", "Dialog", 0));
        label->setText(QApplication::translate("Margins_Dlg", "\346\211\223\345\215\260\346\234\272\345\220\215\347\247\260", 0));
        label_2->setText(QApplication::translate("Margins_Dlg", "\345\267\246\350\276\271\350\267\235", 0));
        label_3->setText(QApplication::translate("Margins_Dlg", "\344\270\212\350\276\271\350\267\235", 0));
        label_4->setText(QApplication::translate("Margins_Dlg", "l_margin", 0));
        label_5->setText(QApplication::translate("Margins_Dlg", "t_margin", 0));
        label_6->setText(QApplication::translate("Margins_Dlg", "r_margin", 0));
        label_7->setText(QApplication::translate("Margins_Dlg", "b_margin", 0));
    } // retranslateUi

};

namespace Ui {
    class Margins_Dlg: public Ui_Margins_Dlg {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MARGINS_DLG_H
