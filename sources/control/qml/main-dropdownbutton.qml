import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	id: item
	height: 500
	width: 600

	property int index: 0
	ListModel {
		id: listmodeldynamic
	}

	Timer {
		id: timer
		interval: 1000
		onTriggered: {
			if (item.index <= 10) {
				listmodeldynamic.append({
					"text": "Item " + item.index,
					"value": item.index
				});

				item.index += 1
				timer.start()
			}
		}
	}

	Component.onCompleted: {
		timer.start()
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		DropDownButton {
			anchors.top: parent.top
			anchors.horizontalCenter: parent.horizontalCenter
			type: Button.Type.Outlined
			model: listmodeldynamic
			defaultValue: 3
			mode: DropDownButton.Mode.Icon
		}
		DropDownButton {
			anchors.top: parent.top
			anchors.right: parent.right
			type: Button.Type.Outlined
			model: listmodellong
			mode: DropDownButton.Mode.Icon
		}
		DropDownButton {
			anchors.top: parent.top
			anchors.left: parent.left
			type: Button.Type.Outlined
			model: listmodel
			mode: DropDownButton.Mode.Icon
		}
		DropDownButton {
			anchors.bottom: parent.bottom
			anchors.right: parent.right
			type: Button.Type.Outlined
			model: listmodel
			mode: DropDownButton.Mode.Icon
		}
		DropDownButton {
			anchors.bottom: parent.bottom
			anchors.left: parent.left
			type: Button.Type.Outlined
			model: listmodel
			mode: DropDownButton.Mode.Icon
		}

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.leftMargin: 10
			anchors.rightMargin: 10
			anchors.topMargin: 40
			anchors.bottomMargin: 40

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
					text: "triangle"
					value: 0
				}
				ListElement {
					text: "square"
					value: 1
				}
				ListElement {
					text: "circle"
					value: 2
				}
			}
			ListModel {
				id: listmodellong
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
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 4
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 5
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 6
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 7
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 8
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 9
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 10
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 11
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 12
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 13
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 14
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 15
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 16
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 17
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 18
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 19
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 20
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 21
				}
				ListElement {
					text: "triangle"
					icon: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					value: 22
				}
				ListElement {
					text: "square"
					icon: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					value: 23
				}
				ListElement {
					text: "circle"
					icon: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					value: 24
				}
			}

			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Outlined
				currentIndex: 1
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodelnoicon
				type: Button.Type.Outlined
				defaultValue: 1
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Outlined
				defaultText: "square"
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Outlined
				maxNumberOfElement: 2
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Outlined
				mode: DropDownButton.Mode.Icon
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Outlined
				mode: DropDownButton.Mode.Text
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodel
				type: Button.Type.Filled
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				enabled: false
				type: Button.Type.Outlined
				model: listmodel
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				model: listmodellong
				type: Button.Type.Filled
			}
			DropDownButton {
				Layout.alignment: Qt.AlignCenter
				enabled: false
				type: Button.Type.Outlined
				model: listmodellong
			}
		}
	}
}
