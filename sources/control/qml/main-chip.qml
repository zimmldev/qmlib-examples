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

			Chip {
				type: Chip.Type.Assist
				text: "assist"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				text: "assist"
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				text: "assist"
				Layout.alignment: Qt.AlignCenter
				Rectangle {
					color: pal.error
					height: 12
					width: height
					radius: height / 2
				}
			}
			Chip {
				type: Chip.Type.Assist
				text: "assist"
				enabled: false
				Rectangle {
					color: pal.error
					height: 12
					width: height
					radius: height / 2
				}
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				text: "assist"
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				text: "assist"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				elevated: true
				text: "assist"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				elevated: true
				enabled: false
				text: "assist"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				elevated: true
				text: "assist"
				Rectangle {
					color: pal.error
					height: 12
					width: height
					radius: height / 2
				}
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Type.Assist
				elevated: true
				enabled: false
				text: "assist"
				Rectangle {
					color: pal.error
					height: 12
					width: height
					radius: height / 2
				}
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
				Layout.alignment: Qt.AlignCenter
			}

			Chip {
				type: Chip.Filter
				text: "filter"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Filter
				elevated: true
				text: "filter"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Filter
				text: "filter"
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Filter
				elevated: true
				enabled: false
				text: "filter"
				Layout.alignment: Qt.AlignCenter
			}

			Chip {
				type: Chip.Input
				text: "input"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Input
				elevated: true
				text: "input"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Input
				text: "input"
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Input
				elevated: true
				enabled: false
				text: "input"
				Layout.alignment: Qt.AlignCenter
			}

			Chip {
				type: Chip.Suggestion
				text: "suggestion"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Suggestion
				elevated: true
				text: "suggestion"
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Suggestion
				text: "suggestion"
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
			Chip {
				type: Chip.Suggestion
				elevated: true
				enabled: false
				text: "suggestion"
				Layout.alignment: Qt.AlignCenter
			}
		}
	}
}
