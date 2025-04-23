import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 500
	width: 600

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			ListModel {
				id: listmodel
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
			}
			ListModel {
				id: listmodelnoicon
				ListElement {
					text: "triangletriangle"
					value: 0
				}
				ListElement {
					text: "square"
					value: 1
				}
				ListElement {
					text: "c"
					value: 2
				}
			}

			Timer {
				id: createTimer
				interval: 2000
				onTriggered: {
					listmodeldynamic.append({text: "triangle", value: 0})
					listmodeldynamic.append({text: "square", value: 1})
					listmodeldynamic.append({text: "circle", value: 2})
				}
				Component.onCompleted: {
					createTimer.start()
				}
			}

			ListModel {
				id: listmodeldynamic
			}

			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				currentIndex: 1
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				defaultValue: 1
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				defaultText: "square"
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				maxNumberOfElement: 2
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				enabled: false
				model: listmodel
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				labelText: "combobox"
				model: listmodel
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodelnoicon
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodeldynamic
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				model: listmodeldynamic
				defaultValue: 1
			}
			ComboBox {
				Layout.alignment: Qt.AlignCenter
				labelText: "combobox"
				enabled: false
				model: listmodel
			}
		}
	}
}
