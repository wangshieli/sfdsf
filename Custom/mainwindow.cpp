#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QPrinter>
#include <QPainter>
#include <QPrintDialog>

#include <QDialog>
#include <QPrintPreviewWidget>
#include <QToolBar>
#include <QToolButton>

#include <QVBoxLayout>

#include <QMessageBox>

#include <QDebug>

#define USE_POINT

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , printer(NULL)
{
    ui->setupUi(this);
    ui->pushButton->setDisabled(true);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    if (NULL != printer)
        delete printer;

    printer = new QPrinter();

    printer->setFullPage(true); // 边距内的区域显示开始在左上角

    printer->setResolution(96);

    printer->setPageOrder(QPrinter::FirstPageFirst);// 打印顺序

    printer->setPageSize(QPrinter::Custom); // 设置纸张类型
    QPageSize ps(QSizeF(210, 290), QPageSize::Millimeter, "A99");
    printer->setPageSize(ps);

    QMarginsF mf(20, 20, 20, 20); // 影响viewport和windows的大小
    printer->setPageMargins(mf, QPageLayout::Millimeter); // 设置页边距

    qDebug() << "pageSize = " << printer->pageSize();

    QDialog *dlg = new QDialog();
    QPrintPreviewWidget *pre = new QPrintPreviewWidget(printer, dlg);
    pre->setZoomFactor(1.0);

    connect(pre, SIGNAL(paintRequested(QPrinter *)), this, SLOT(paint_pre_slot(QPrinter* )));

    QToolBar *toolbar = new QToolBar();
    QToolButton *toolbtn = new QToolButton(toolbar);
    connect(toolbtn, SIGNAL(clicked(bool)), this, SLOT(paint_print_slot()));
    toolbar->addWidget(toolbtn);

    QVBoxLayout* vlayout = new QVBoxLayout();
    vlayout->addWidget(toolbar);
    vlayout->addWidget(pre);
    dlg->setLayout(vlayout);

    dlg->setWindowState(Qt::WindowMaximized);

    dlg->exec();
}

void MainWindow::paint_pre_slot(QPrinter* printer)
{
    QPainter painter;

    painter.begin(printer);

    QPixmap pp;
    if (!pp.load("document.png"))
        QMessageBox::information(NULL, "test", "test");

    QRect rect_viewport = painter.viewport();
    painter.drawPixmap(0, 0, rect_viewport.width(), rect_viewport.height(), pp);

    m_iDpiX = printer->logicalDpiX();
    m_iDpiY = printer->logicalDpiY();

    QFont ft;
    qreal f_size = 9;
    ft.setFamily("宋体");
#ifdef USE_POINT
    ft.setPointSizeF(f_size);
#else
    ft.setPixelSize(Point2Pixel(f_size));
#endif
    painter.setFont(ft);

    QRectF rf = Physics2Logic(QRectF(0, 0, 1600, 50));
    painter.drawText(rf, Qt::AlignLeft | Qt::TextWrapAnywhere, "打印测试_短");
    painter.drawRect(rf);

    painter.end();
}

void MainWindow::paint_print_slot()
{
    QPrinter* _printer = printer;

    QPrintDialog *dlg = new QPrintDialog(_printer);
    dlg->exec();

    _printer = dlg->printer();

    qreal l, t, r, b;
    _printer->getPageMargins(&l, &t, &r, &b, QPrinter::Millimeter);
    qDebug() << l << " " << t << " " << r << " " << b;

    int _ps = _printer->pageSize();
    qDebug() << "pageSize = " << _ps;

    QPainter painter;
    painter.begin(_printer);

    m_iDpiX = _printer->logicalDpiX();
    m_iDpiY = _printer->logicalDpiY();

    QFont ft;
    qreal f_size = 9;
    ft.setFamily("宋体");
#ifdef USE_POINT
    ft.setPointSizeF(f_size);
#else
    ft.setPixelSize(Point2Pixel(f_size));
#endif
    painter.setFont(ft);

    QRectF rf = Physics2Logic(QRectF(0, 0, 1600, 50));
    painter.drawText(rf, Qt::AlignLeft | Qt::TextWrapAnywhere, "打印测试_短");
    painter.drawRect(rf);

    painter.end();
}

QRectF MainWindow::Physics2Logic(QRectF dp)
{
    qreal x = dp.x();
    qreal y = dp.y();
    qreal w = dp.width();
    qreal h = dp.height();

    qreal dx = x / 10;
    qreal dy = y / 10;
    qreal dw = w / 10;
    qreal dh = h / 10;

    x = (dx / 25.4) * m_iDpiX;
    y = (dy / 25.4) * m_iDpiY;
    w = (dw / 25.4) * m_iDpiX;
    h = (dh / 25.4) * m_iDpiY;

    return QRectF(x, y, w, h);
}

int MainWindow::Point2Pixel(qreal pt)
{
    return pt / 72 * m_iDpiX;
}


void MainWindow::on_pushButton_2_clicked()
{
    if (NULL != printer)
        delete printer;

    printer = new QPrinter();

    QPrinter* _printer = NULL;

    QPrintDialog *dlg = new QPrintDialog(printer);
    dlg->exec();

    _printer = dlg->printer();

    _printer->setFullPage(true); // 边距内的区域显示开始在左上角

    // printer->setResolution(96);

//    _printer->setPageSize(QPrinter::Custom); // 设置纸张类型
//    QPageSize ps(QSizeF(210, 297), QPageSize::Millimeter, "A99");
//    _printer->setPageSize(ps);

    _printer->setPageSize(QPrinter::A4);

//    QMarginsF mf(0, 0, 0, 0); // 影响viewport和windows的大小
//    _printer->setPageMargins(mf, QPageLayout::Millimeter); // 设置页边距

//    _printer->setPageOrder(QPrinter::FirstPageFirst);// 打印顺序

    qreal l, t, r, b;
    _printer->getPageMargins(&l, &t, &r, &b, QPrinter::Millimeter);
    qDebug() << l << " " << t << " " << r << " " << b;

    int _ps = _printer->pageSize();
    qDebug() << "pageSize = " << _ps;

    QPainter painter;
    painter.begin(_printer);

    m_iDpiX = _printer->logicalDpiX();
    m_iDpiY = _printer->logicalDpiY();

    QFont ft;
    qreal f_size = 9;
    ft.setFamily("宋体");
#ifdef USE_POINT
    ft.setPointSizeF(f_size);
#else
    ft.setPixelSize(Point2Pixel(f_size));
#endif
    painter.setFont(ft);

    QRectF rf = Physics2Logic(QRectF(0, 0, 1600, 50));
    painter.drawText(rf, Qt::AlignLeft | Qt::TextWrapAnywhere, "打印测试_短");
    painter.drawRect(rf);

    painter.end();
}

