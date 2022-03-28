#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
class QPrinter;

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
    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;

private slots:
    void paint_pre_slot(QPrinter* printer);
    void paint_print_slot();

    void on_pushButton_2_clicked();

private:
    QRectF Physics2Logic(QRectF dp);
    int Point2Pixel(qreal pt);

private:
    int m_iDpiX;
    int m_iDpiY;

    QPrinter* printer;
};
#endif // MAINWINDOW_H
