import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 200
	width: 400

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.centerIn: parent

			RoundSwipeComboBox {
				model: ListModel {
					ListElement {
						text: "triangle"
						icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
						value: 0
					}
					ListElement {
						text: "square"
						icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
						value: 1
					}
					ListElement {
						text: "circle"
						icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
						value: 2
					}
					ListElement {
						text: "triangle F"
						icon: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
						value: 3
					}
					ListElement {
						text: "square F"
						icon: "qrc:/qt/qml/ControlExample/icons/square-filled.png"
						value: 4
					}
					ListElement {
						text: "circle F"
						icon: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
						value: 5
					}
				}
				textRole: "text"
			}
		}
	}
}
