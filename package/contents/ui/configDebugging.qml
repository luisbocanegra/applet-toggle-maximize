import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

ColumnLayout {
    id: root
    property alias cfg_enableDebug: enableDebug.checked

    signal configurationChanged

    Kirigami.FormLayout {
        id: generalPage
        Layout.alignment: Qt.AlignTop
        // wideMode: false

        Kirigami.Separator {
            Kirigami.FormData.label: i18n("Logging")
            Kirigami.FormData.isSection: true
        }

        ColumnLayout {
            CheckBox {
                id: enableDebug
                text: "Show console debug messages"
                checked: cfg_enableDebug

                onCheckedChanged: {
                    cfg_enableDebug = checked
                }
            }
        }
    }
}

