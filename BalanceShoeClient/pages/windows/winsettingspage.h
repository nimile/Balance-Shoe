/**
 * @file Winsettingspage.h
 * @brief Provides the logic to handle the developer settings
 * @details This file contains the logic for the developer settings.
 * @author Nils Milewski (nimile/10010480)
 */
#ifndef WINSETTINGSPAGE_H
#define WINSETTINGSPAGE_H

#include <QObject>

#if defined(Q_OS_WINDOWS)

/* QT widgets */
#include <QWidget>      // Used as base class
#include <QLabel>
#include <QLineEdit>
#include <QCheckBox>
#include <QGroupBox>
#include <QComboBox>
#include <QPushButton>
#include <QSpacerItem>

/* Qt layout */
#include <QGridLayout>  // Used as primary layout

/* User includes */
#include "util/utils.h"              // Used to access project utilities

namespace haevn::esp::pages{

    /**
     * @brief The WinSettingsPage class
     * @details This class should only be available during the development of the project.
     *          Later it should be placed in a separate support app therefore no documentation
     *          will be provided.
     * @author Nils Milewski (nimile/10010480)
     */
    class WinSettingsPage : public QWidget{

        Q_OBJECT

    private attributes:

        QLineEdit* inputBAUD;

        QLineEdit* inputDOutPin;

        QLineEdit* inputSCKPint;

        QLineEdit* inputReferenceWeight;

        QLineEdit* inputTolerance;

        QLineEdit* inputScaleValue;

        QPushButton* buttonSaveSetup;

        QFont font;

    public methods:

        WinSettingsPage(QWidget* parent = nullptr);

        QLayout *createLayout();

    private slots:

        void buttonBackPressed();

        void buttonLottoPressed();

        void buttonSavePressed();
    };
}

#endif // defined(Q_OS_Win)

#endif // WinSETTINGSPAGE_H
