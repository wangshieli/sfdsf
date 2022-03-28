#include "qmcustom_ctl.h"
#include "qmcustom_ctlplugin.h"

#include <QtPlugin>

QMCustom_ctlPlugin::QMCustom_ctlPlugin(QObject *parent)
    : QObject(parent)
{
    m_initialized = false;
}

void QMCustom_ctlPlugin::initialize(QDesignerFormEditorInterface * /* core */)
{
    if (m_initialized)
        return;

    // Add extension registrations, etc. here

    m_initialized = true;
}

bool QMCustom_ctlPlugin::isInitialized() const
{
    return m_initialized;
}

QWidget *QMCustom_ctlPlugin::createWidget(QWidget *parent)
{
    return new QMCustom_ctl(parent);
}

QString QMCustom_ctlPlugin::name() const
{
    return QLatin1String("QMCustom_ctl");
}

QString QMCustom_ctlPlugin::group() const
{
    return QLatin1String("");
}

QIcon QMCustom_ctlPlugin::icon() const
{
    return QIcon();
}

QString QMCustom_ctlPlugin::toolTip() const
{
    return QLatin1String("");
}

QString QMCustom_ctlPlugin::whatsThis() const
{
    return QLatin1String("");
}

bool QMCustom_ctlPlugin::isContainer() const
{
    return false;
}

QString QMCustom_ctlPlugin::domXml() const
{
    return QLatin1String("<widget class=\"QMCustom_ctl\" name=\"qMCustom_ctl\">\n</widget>\n");
}

QString QMCustom_ctlPlugin::includeFile() const
{
    return QLatin1String("qmcustom_ctl.h");
}
#if QT_VERSION < 0x050000
Q_EXPORT_PLUGIN2(qmcustom_ctlplugin, QMCustom_ctlPlugin)
#endif // QT_VERSION < 0x050000
