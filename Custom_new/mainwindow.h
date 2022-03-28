#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include <QPrinter>
#include <QPainter>
#include <QPrintPreviewWidget>
#include <QPrintPreviewDialog>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_btn_base01_clicked();

    void base01_pre_slot(QPrinter* printer);
    void base01_pre_slot_01 (QPrinter* printer);
    bool base01_print_slot();

    void on_Btn_Print02_clicked();

private:
    bool base01_printer_init();
    bool base01_pre_print(QPrinter* printer, bool bPrint = false);
    bool base01_pre_wnd();
    bool base01_pre_wnd_01();

private:
    bool checktag(QString _btn_text, QString _label_msg);
    bool print_xps_pdf();

private:
    bool my_info(bool bEnable, QString name);
    void my_setFullPage(bool bEnable);
    void my_setResolution(bool bEnable, int arg = 96);
    void my_setPageOrder(bool bEnable, QPrinter::PageOrder);
    void my_setPageSize(bool bEnable, QPrinter::PageSize _ps, qreal _w, qreal _h);
    void my_setPageMargins(bool bEnable, qreal l = 0, qreal t = 0, qreal r = 0, qreal b = 0);

    void show_printer_info();
    void show_painter_info(QPainter* painter);
    void show_painter_font_info(QPainter* painter);

private:
    QRectF Physics2Logic(QRectF dp);
    qreal Point2Pixel(qreal pt);

    QString buildTime();

private:
    void my_drawText(QPainter* _painter, QRectF _rf, QString _text, int _tf, qreal _fs, QString _ft
                     , qreal _l_space = 2, qreal _t_space = 2, qreal _r_space = 2, qreal _b_space = 2);

private:
    Ui::MainWindow *ui;

private:
    QString m_msg_BTN_BASE01;

private:
    QPrinter* m_printer;
    QPrintPreviewWidget *pre;
    QPrintPreviewDialog *predlg;

    qreal m_iDpiX;
    qreal m_iDpiY;

    qreal m_iXoff;
    qreal m_iYoff;

    qreal m_iLeft;
    qreal m_iTop;
    qreal m_iRight;
    qreal m_iBottom;
};
#endif // MAINWINDOW_H
