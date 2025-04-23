import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 500
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			LongPressButton {
				text: "Elevated"
				type: Button.Elevated
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				enabled: false
				text: "Elevated"
				type: Button.Elevated
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				text: "Filled"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				enabled: false
				text: "Filled"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				text: "Tonal"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				enabled: false
				text: "Tonal"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				enabled: false
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				text: "Text"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				enabled: false
				text: "Text"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				type: Button.Tonal
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				text: "Filled"
				type: Button.Filled
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				text: "Outlined"
				type: Button.Outlined
				Layout.alignment: Qt.AlignCenter
			}
			LongPressButton {
				sourceUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				sourceChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
				text: "checkable"
				checkable: true
				type: Button.Text
				Layout.alignment: Qt.AlignCenter
			}
		}
	}
}
