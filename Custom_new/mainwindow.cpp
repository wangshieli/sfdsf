#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QPrintDialog>
#include <QToolBar>
#include <QToolButton>
#include <QVBoxLayout>
#include <QFileDialog>

#include <QMessageBox>

#include <QLocale>
#include <QDateTime>

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
    , m_printer(NULL)
    , pre(NULL)
    , m_iDpiX(0)
    , m_iDpiY(0)
    , m_iXoff(0)
    , m_iYoff(0)
    , m_iLeft(0)
    , m_iTop(0)
    , m_iRight(0)
    , m_iBottom(0)
{
    ui->setupUi(this);
    m_msg_BTN_BASE01 = "打印01：基础打印功能";
}

MainWindow::~MainWindow()
{
    delete ui;
}

bool MainWindow::my_info(bool bEnable, QString name)
{
    if (!bEnable)
    {
        ui->textEdit_printer_info->append("不使用" + name);
        return false;
    }
    else
    {
        ui->textEdit_printer_info->append("使用" + name);
    }

    return true;
}

void MainWindow::my_setFullPage(bool bEnable)
{
    if (!my_info(bEnable, "setFullPage"))
        return;

    m_printer->setFullPage(true);
}

void MainWindow::my_setResolution(bool bEnable, int _arg)
{
    if (!my_info(bEnable, "setResolution"))
        return;

    QString msg = QString(" 使用的参数为: %1").arg(_arg);
    ui->textEdit_printer_info->append(msg);
    m_printer->setResolution(_arg);
}

void MainWindow::my_setPageOrder(bool bEnable, QPrinter::PageOrder po)
{
    if (!my_info(bEnable, "setPageOrder"))
        return;


    QString msg = QString(" 使用的参数为: %1")
            .arg(po == QPrinter::FirstPageFirst ? "QPrinter::FirstPageFirst" : "QPrinter::LastPageFirst");
    ui->textEdit_printer_info->append(msg);
    m_printer->setPageOrder(po);
}

void MainWindow::my_setPageSize(bool bEnable, QPrinter::PageSize _ps, qreal _w, qreal _h)
{
    if (!my_info(bEnable, "setPageSize"))
        return;

    if (_ps == QPrinter::Custom)
    {
        QPageSize ps(QSizeF(_w, _h), QPageSize::Millimeter, "A99");
        m_printer->setPageSize(ps);
    }
    else
    {
        m_printer->setPageSize(_ps);
    }

    QPageSize pagesize = m_printer->pageLayout().pageSize();
    QSizeF size = pagesize.size(QPageSize::Millimeter);
    QString msg = QString(" pageSize = %1").arg(pagesize.name())
            + QString(", w = %1").arg(size.width())
            + QString(", h = %1").arg((size.height()));
    ui->textEdit_printer_info->append(msg);
}

void MainWindow::my_setPageMargins(bool bEnable, qreal l, qreal t, qreal r, qreal b)
{
    if (!my_info(bEnable, "setPageMargins"))
        return;

    QString msg = QString::asprintf(" l = %f，t = %f，r = %f，b = %f", l, t, r, b);
    ui->textEdit_printer_info->append(msg);
    QMarginsF mf(l, t, r, b); // 影响viewport和windows的大小
    m_printer->setPageMargins(mf, QPageLayout::Millimeter); // 设置页边距
}

void MainWindow::show_printer_info()
{
    QString _name = m_printer->printerName();
    QPrinter::Orientation _orientation = m_printer->orientation();
    QString _paper_name = m_printer->pageLayout().pageSize().name();
    qreal _paper_width = m_printer->pageLayout().pageSize().size(QPageSize::Millimeter).width();
    qreal _paper_height = m_printer->pageLayout().pageSize().size(QPageSize::Millimeter).height();
    QPrinter::PageOrder _page_order = m_printer->pageOrder();
    int _resolution = m_printer->resolution();
    bool _bfullpage = m_printer->fullPage();
    QPageLayout::Unit _unit = m_printer->pageLayout().units();
    QMarginsF _marginsf = m_printer->pageLayout().margins(QPageLayout::Millimeter);
    m_iDpiX = m_printer->logicalDpiX();
    m_iDpiY = m_printer->logicalDpiY();
    QString msg = QString("***打印机名称：%1\n").arg(_name)
            + QString("***分辨率：%1\n").arg(_resolution)
            + QString("***逻辑DPI：x = %1, y = %2\n").arg(m_iDpiX).arg(m_iDpiY)
            + QString("***计量单位：%1\n").arg(_unit)
            + QString("***进纸方向：%1\n").arg(QPrinter::Portrait == _orientation ? "Portrait" : "Landscape")
            + QString("***纸张顺序：%1\n").arg(QPrinter::FirstPageFirst == _page_order ? "FirstPageFirst" : "LastPageFirst")
            + QString("***选中纸张名称：%1\n").arg(_paper_name)
            + QString("***纸张大小 w = %1").arg(_paper_width) + QString(", h = %2\n").arg(_paper_height)
            + QString("***边距设置：r = %1, t = %2, r = %3, b = %4\n").arg(_marginsf.left()).arg(_marginsf.top()).arg(_marginsf.right()).arg(_marginsf.bottom())
            + QString("***是否铺满：%1\n").arg(_bfullpage ? "铺满" : "不铺满");

    ui->textEdit_printer_info->append(msg);

}

void MainWindow::show_painter_info(QPainter* painter)
{
    QRect _view_rect = painter->viewport();
    QRect _window_rect = painter->window();
    QString msg = QString("绘图设备参数：\n")
            + QString("@@@viewport：left = %1, top = %2, right = %3, bottom = %4\n")
            .arg(_view_rect.left()).arg(_view_rect.top()).arg(_view_rect.right()).arg(_view_rect.bottom())
            + QString("@@@window：left = %1, top = %2, right = %3, bottom = %4")
            .arg(_window_rect.left()).arg(_window_rect.top()).arg(_window_rect.right()).arg(_window_rect.bottom());
    ui->textEdit_printer_info->append(msg);
}

void MainWindow::show_painter_font_info(QPainter* painter)
{
    QFontInfo fi = painter->fontInfo();
    QString _font_family = fi.family();
    QString _font_styleName = fi.styleName();
    int _font_pixelSize = fi.pixelSize();
    int _font_pointSize = fi.pointSize();
    qreal _font_pointSizeF = fi.pointSizeF();
    QFont::Style _font_style = fi.style();
    int _font_weight = fi.weight();

    QString msg = QString("PAINTER FONT INFO：\n")
            + QString("+++_font_family = %1\n").arg(_font_family)
            + QString("+++_font_styleName = %1\n").arg(_font_styleName)
            + QString("+++_font_pixelSize = %1\n").arg(_font_pixelSize)
            + QString("+++_font_pointSize = %1\n").arg(_font_pointSize)
            + QString("+++_font_pointSizeF = %1\n").arg(_font_pointSizeF)
            + QString("+++_font_style = %1\n").arg(_font_style)
            + QString("+++_font_weight = %1").arg(_font_weight);

    ui->textEdit_printer_info->append(msg);
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

qreal MainWindow::MainWindow::Point2Pixel(qreal pt)
{
    return pt / 72 * m_iDpiX;
}

QString MainWindow::buildTime()
{
    QString dateTime;
    dateTime += __DATE__;
    dateTime += __TIME__;
    dateTime.replace("  ", " 0");

    QString msg = QLocale(QLocale::English).toDateTime(dateTime,"MMM dd yyyyhh:mm:ss").toString("yyyy.MM.dd hh:mm:ss");
    return msg;
}

bool MainWindow::checktag(QString _btn_text, QString _label_msg)
{
    if (_label_msg.isEmpty())
        return false;

    int len = _btn_text.length();
    QStringRef _tag = _label_msg.midRef(0, len);
    if (_tag.compare(_btn_text) != 0)
        return false;

    return true;
}

bool MainWindow::print_xps_pdf()
{
    QString _printer_name = m_printer->printerName();
    int _type = _printer_name.contains(" xps", Qt::CaseInsensitive) ? 1 : (_printer_name.contains(" xps", Qt::CaseInsensitive) ? 2 : 0);
    if (_type == 0)
        return true;

    QString _title = (_type == 1 ? "xps文件打印" : "pdf文件打印");
    QString _content = (_type == 1 ? "OpenXPS文档 (*.oxps);;XPS文档 (*.xps)" : "PDF文档 (*.pdf)");
    QString _file_name = QFileDialog::getSaveFileName(NULL, _title, "", _content);
    if (_file_name.isEmpty())
        return false;

    m_printer->setOutputFileName(_file_name);

    return true;
}

bool MainWindow::base01_printer_init()
{
    if (NULL != m_printer)
    {
        delete m_printer;
        m_printer = NULL;
    }

    m_printer = new QPrinter(QPrinter::HighResolution);

    //ui->textEdit_printer_info->append("打印机初始属性：");
    //show_printer_info();

    //ui->textEdit_printer_info->append("自定义打印机属性：");
    my_setFullPage(false);
    my_setResolution(false);
    my_setPageOrder(false, QPrinter::FirstPageFirst);
    my_setPageSize(false, QPrinter::Custom, 210, 290);
    //ui->textEdit_printer_info->append("");

    QPrintDialog* dlg = new QPrintDialog(m_printer);
    if (QDialog::Rejected == dlg->exec())
        return false;

    //my_setPageMargins(true, 0, 0, 0, 0);

    //ui->textEdit_printer_info->append("选中印机属性：");
    //show_printer_info();


    return true;
}

bool MainWindow::base01_print_slot()
{
    if (!print_xps_pdf())
        return false;

    //pre->setOrientation(QPrinter::Landscape);
    //pre->print(); // 直接打印预览页面，有什么打什么

    //return true;

    return base01_pre_print(m_printer, true);
}

void MainWindow::base01_pre_slot(QPrinter* printer)
{
    base01_pre_print(printer);
}

void MainWindow::base01_pre_slot_01 (QPrinter* printer)
{
    base01_pre_print(printer, true);
}

bool MainWindow::base01_pre_wnd()
{
    if (!base01_printer_init())
    {
        ui->textEdit_printer_info->append("打印取消或异常\n");
        return false;
    }

    QDialog *dlg = new QDialog();
    pre = new QPrintPreviewWidget(m_printer, this);
    pre->setZoomFactor(1.0);

    connect(pre, SIGNAL(paintRequested(QPrinter *)), this, SLOT(base01_pre_slot(QPrinter* )));

    QToolBar *toolbar = new QToolBar();
    QToolButton *toolbtn = new QToolButton(toolbar);
    connect(toolbtn, SIGNAL(clicked(bool)), this, SLOT(base01_print_slot()));
    toolbar->addWidget(toolbtn);

    QVBoxLayout* vlayout = new QVBoxLayout();
    vlayout->addWidget(toolbar);
    vlayout->addWidget(pre);
    dlg->setLayout(vlayout);

    dlg->setWindowState(Qt::WindowMaximized);

    dlg->exec();

    return true;
}

bool MainWindow::base01_pre_wnd_01()
{
    if (!base01_printer_init())
    {
        ui->textEdit_printer_info->append("打印取消或异常\n");
        return false;
    }

    pre = new QPrintPreviewWidget(m_printer, this);
    pre->setZoomFactor(1.0);

    connect(pre, SIGNAL(paintRequested(QPrinter *)), this, SLOT(base01_pre_slot_01(QPrinter* )));

    pre->show();
    pre->setHidden(true);

    pre->print();

    return true;
}

bool MainWindow::base01_pre_print(QPrinter* printer, bool bPrint/* = false*/)
{
    my_setPageSize(true, QPrinter::Custom, 240, 140);
    //my_setPageMargins(true, m_iLeft, m_iTop, m_iRight, m_iBottom);

    QPageLayout _pageLayout = printer->pageLayout();
    _pageLayout.setUnits(QPageLayout::Millimeter);
    QMarginsF _min_margins = _pageLayout.minimumMargins();
    qDebug() << _min_margins.right();
//     QRectF _rect_paint01 = _pageLayout.paintRect();
//     qDebug() << _rect_paint01.width();

    qreal _paper_width = _pageLayout.pageSize().size(QPageSize::Millimeter).width();
    qreal _paper_height = _pageLayout.pageSize().size(QPageSize::Millimeter).height();
    qDebug() << _paper_width;
    qDebug() << _paper_height;

    qreal _real_width = _paper_width - _min_margins.left() - _min_margins.right(); // 纸张实际可绘图最大区域宽
    qreal _real_heigth = _paper_height - _min_margins.top() - _min_margins.bottom(); // 纸张实际可绘图最大区域高

    qreal _w = 0, _h = 0;
    QRectF _rect_paint = _pageLayout.paintRect(QPageLayout::Millimeter);
    _w = _rect_paint.width(); // 实际可以绘图区域，受左右边距影响
    _h = _rect_paint.height(); // 实际可绘图区域高，受上下边距影响


    QPainter _painter;
    _painter.begin(printer);
    _painter.setRenderHint(QPainter::Antialiasing);

    QRect _rect_viewport = _painter.viewport();

    //int _xoff = _rect_viewport.width() / _w / 10 * m_iXoff;
    //int _yoff = _rect_viewport.height() / _h / 10 * m_iYoff;
    QRect vrect(0, 0, _rect_viewport.width(), _rect_viewport.height());
    _painter.setViewport(vrect);

    _painter.setWindow(0, 0, _w * 10, _h * 10);

    if (!bPrint)
    {
        QPixmap pp;
        if (!pp.load("zzszyfp_NEW.PNG"/*"document.png"*/))
            QMessageBox::information(NULL, "提示", "背景图片加载失败");
        else
            _painter.drawPixmap(0, 0, _w * 10, _h * 10, pp);
    }

    QRect _rt = _painter.window();
    m_iDpiX = 25.4 * _rt.width() / _w ;
//    m_iDpiY = _rt.height() / _h * 25.4;

    _painter.scale(_w / _real_width, _h / _real_heigth);

    qreal f_size = 9;
    QString f_type = "宋体";
    QString _build_time = buildTime();
    QString _current_time = QDateTime::currentDateTime().toString("yyyy.MM.dd hh:mm:ss");
    QString _text = "编译时间：" + _build_time + "  " + "打印时间：" + _current_time;

    QRectF rf(50, 50, 1000, 100);
    my_drawText(&_painter, rf, _text, Qt::AlignCenter, f_size, f_type);

    printer->newPage();

    _painter.drawText(QRectF(50, 200, 1000, 100), Qt::AlignCenter, _text);

    _painter.end();
    return true;
}

void MainWindow::my_drawText(QPainter* _painter, QRectF _rf, QString _text, int _tf, qreal _fs, QString _ft
                             , qreal _l_space/* = 2*/, qreal _t_space/* = 2*/, qreal _r_space/* = 2*/, qreal _b_space/* = 2*/)
{
    QFont ft, old_font;

    old_font = _painter->font();

    ft.setFamily(_ft);
    qreal pixel_fs = Point2Pixel(_fs);
    ft.setPixelSize(pixel_fs);
    _painter->setFont(ft);

    _rf.setLeft(_rf.left() + _l_space);
    _rf.setTop(_rf.top() + _t_space);
    _rf.setRight(_rf.right() - _r_space);
    _rf.setBottom(_rf.bottom() - _b_space);

    int _flags = Qt::AlignLeft | Qt::AlignTop;
    if (_tf & Qt::TextWrapAnywhere)
        _flags |= Qt::TextWrapAnywhere;
    else
        _flags |= Qt::TextSingleLine;

    QRectF _brf = _painter->boundingRect(_rf, _flags, _text);
    if ((_brf.right() > _rf.right() || _brf.bottom() > _rf.bottom()) && (pixel_fs -= 1 || true))
    {
        do
        {
            ft.setFamily(_ft);
            ft.setPixelSize(pixel_fs);
            _painter->setFont(ft);
            _brf = _painter->boundingRect(_rf, _flags, _text);
        }while((_brf.right() > _rf.right() || _brf.bottom() > _rf.bottom()) && (pixel_fs -= 1 || true));
    }

    qreal _w_space = _rf.right() - _brf.right();
    qreal _h_space = _rf.bottom() - _brf.bottom();

    if (_tf & Qt::AlignHCenter)
    {
        _rf.setLeft(_rf.left() + (_w_space / 2));
        _rf.setRight(_rf.right() - (_w_space / 2));
    }
    else if (_tf & Qt::AlignRight)
    {
        _rf.setLeft(_rf.left() + _w_space);
    }

    if (_tf & Qt::AlignVCenter)
    {
        _rf.setTop(_rf.top() + (_h_space / 2));
        _rf.setBottom(_rf.bottom() - (_h_space / 2));
    }
    else if (_tf & Qt::AlignBottom)
    {
        _rf.setTop(_rf.top() + _h_space);
    }

    _painter->drawText(_rf, _flags, _text);
}

void MainWindow::on_btn_base01_clicked()
{
    QString _btn_text = ui->btn_base01->text();
    QString _label_msg = ui->label_msg->text();

    m_iXoff = ui->LeftOff->toPlainText().toInt();
    m_iYoff = ui->TopOff->toPlainText().toInt();

    QString _margins = ui->textEdit_Margins->toPlainText();
    if (!_margins.isEmpty())
    {
        QStringList _ql = _margins.split(" ");
        m_iLeft = _ql.at(0).toDouble();
        m_iTop = _ql.at(1).toDouble();
        m_iRight = _ql.at(2).toDouble();
        m_iBottom = _ql.at(3).toDouble();
    }

    if (!checktag(_btn_text, _label_msg))
    {
        ui->label_msg->setText(m_msg_BTN_BASE01);
    }

    QString _text_info = ui->textEdit_printer_info->toPlainText();
    if (!_text_info.isEmpty())
        ui->textEdit_printer_info->append("++++++++++++++++++++++");

    base01_pre_wnd();
}


void MainWindow::on_Btn_Print02_clicked()
{
    QString _btn_text = ui->btn_base01->text();
    QString _label_msg = ui->label_msg->text();

    m_iXoff = ui->LeftOff->toPlainText().toInt();
    m_iYoff = ui->TopOff->toPlainText().toInt();

    QString _margins = ui->textEdit_Margins->toPlainText();
    if (!_margins.isEmpty())
    {
        QStringList _ql = _margins.split(" ");
        m_iLeft = _ql.at(0).toDouble();
        m_iTop = _ql.at(1).toDouble();
        m_iRight = _ql.at(2).toDouble();
        m_iBottom = _ql.at(3).toDouble();
    }

    if (!checktag(_btn_text, _label_msg))
    {
        ui->label_msg->setText(m_msg_BTN_BASE01);
    }

    QString _text_info = ui->textEdit_printer_info->toPlainText();
    if (!_text_info.isEmpty())
        ui->textEdit_printer_info->append("++++++++++++++++++++++");

    base01_pre_wnd_01();
}

