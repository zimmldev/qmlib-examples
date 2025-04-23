import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 700
	width: 400
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			Button {
				text: "Elevated"
				type: Button.Elevated
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				enabled: false
				text: "Elevated"
				type: Button.Elevated
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				text: "Filled"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				enabled: false
				text: "Filled"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				text: "Tonal"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				enabled: false
				text: "Tonal"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				enabled: false
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				text: "Text"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				enabled: false
				text: "Text"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/Control/icons/add.png"
				text: "Filled button"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				sourceUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				sourceChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
				text: "checkable"
				checkable: true
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			Item {}
			Button {
				text: "big"
				height: 80
				checkable: true
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				height: 80
				checkable: true
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			Button {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				text: "Outlined"
				type: Button.Outlined
				Layout.rowSpan: 2
				Layout.fillWidth: true
			}
		}
	}
}
