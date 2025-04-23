import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 1200
	width: 600

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10
			columnSpacing: 10
			rowSpacing: 10

			TextField {
				Layout.fillWidth: true
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
			}

			TextField {
				Layout.fillWidth: true
				placeholderText: "placeholder"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				placeholderText: "placeholder"
			}

			TextField {
				Layout.fillWidth: true
				labelText: "Label text"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				labelText: "Label text"
			}

			TextField {
				Layout.fillWidth: true
				supportingText: "Supporting text"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				supportingText: "Supporting text"
			}

			TextField {
				Layout.fillWidth: true
				suffixText: "kg"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				suffixText: "kg"
			}

			TextField {
				Layout.fillWidth: true
				supportingText: "Supporting text"
				suffixText: "kg"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				supportingText: "Supporting text"
				suffixText: "kg"
			}

			TextField {
				Layout.fillWidth: true
				supportingText: "Supporting text"
				labelText: "Label text"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				supportingText: "Supporting text"
				labelText: "Label text"
			}

			TextField {
				Layout.fillWidth: true
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
			}

			TextField {
				Layout.fillWidth: true
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				labelText: "Label text"
				suffixText: "kg"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				labelText: "Label text"
				suffixText: "kg"
			}

			TextField {
				Layout.fillWidth: true
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}

			TextField {
				Layout.fillWidth: true
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
			}

			TextField {
				Layout.fillWidth: true
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}

			TextField {
				error: true
				Layout.fillWidth: true
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}
			TextField {
				error: true
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			}

			TextField {
				Layout.fillWidth: true
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
				supportingText: error ? "text too long" : ""
				labelText: "Label text"
				error: text.length > 5
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
				supportingText: error ? "text too long" : ""
				labelText: "Label text"
				error: text.length > 5
			}

			TextField {
				Layout.fillWidth: true
				enabled: false
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
				supportingText: error ? "text too long" : ""
				labelText: "Label text"
				text: "input text"
			}
			TextField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				enabled: false
				leadingIcon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				trailingIcon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				suffixText: "kg"
				supportingText: error ? "text too long" : ""
				labelText: "Label text"
				text: "input text"
			}
		}
	}
}
