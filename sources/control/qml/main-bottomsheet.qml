import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as C

import Control 1.0
import Example 1.0

Window {
	height: 400
	width: 800

	Rectangle {
		id: page
		Layout.fillWidth: true
		Layout.fillHeight: true
		color: pal.surface

		Column {
			id: col
			anchors.centerIn: parent
			spacing: 10
			Button {
				text: "open model"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetModal.open()
				}
			}
			Button {
				text: "open not modal"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetNotModal.open()
				}
			}
			Button {
				text: "open too long"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetTooLong.open()
				}
			}
			Button {
				text: "open not closable"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetNotClosable.open()
				}
			}
		}

		BottomSheet {
			id: bottomSheetModal
			actions: [
				MenuAction {
					text: "parameters"
					source: "qrc:/qt/qml/Control/icons/settings.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				}
			]
		}
		BottomSheet {
			id: bottomSheetNotModal
			modal: false
			actions: [
				MenuAction {
					text: "parameters"
					source: "qrc:/qt/qml/Control/icons/settings.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				}
			]
		}
		BottomSheet {
			id: bottomSheetNotClosable
			modal: false
			closable: false
			actions: [
				MenuAction {
					text: "parameters"
					source: "qrc:/qt/qml/Control/icons/settings.png"
				},
				MenuAction {
					text: "close"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
					action: (function(){
						bottomSheetNotClosable.close()
					})
				}
			]
		}
		BottomSheet {
			id: bottomSheetTooLong
			modal: false
			actions: [
				MenuAction {
					text: "parameters"
					source: "qrc:/qt/qml/Control/icons/settings.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				}
			]
		}
	}
}
