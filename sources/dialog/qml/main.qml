import QtQuick

import Example 1.0

WindowList {
	title: "Dialog"

	model: ListModel {
                ListElement {
                        text: "banner"
                        url: "qrc:/qt/qml/DialogExample/qml/main-banner.qml"
                }
                ListElement {
                        text: "button confirmation"
                        url: "qrc:/qt/qml/DialogExample/qml/main-buttonconfirmation.qml"
                }
		ListElement {
			text: "button confirmation"
			url: "qrc:/qt/qml/DialogExample/qml/main-buttonconfirmation.qml"
		}
		ListElement {
			text: "dialog"
			url: "qrc:/qt/qml/DialogExample/qml/main-dialog.qml"
		}
		ListElement {
			text: "dismissable dialog"
			url: "qrc:/qt/qml/DialogExample/qml/main-dismissabledialog.qml"
		}
		ListElement {
			text: "full screen dialog"
			url: "qrc:/qt/qml/DialogExample/qml/main-fullscreendialog.qml"
		}
		ListElement {
			text: "snack bar"
			url: "qrc:/qt/qml/DialogExample/qml/main-snackbar.qml"
		}
		ListElement {
			text: "validation dialog"
			url: "qrc:/qt/qml/DialogExample/qml/main-validationdialog.qml"
		}
	}
}
