import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Panel 1.0
import Control 1.0 as C

Window {
	width: 640
	height: 800

	Slider {
		id: rShiftX
		text: "Red x"
		value: 0
		from: -1.
		to: 1.
	}
	Slider {
		id: rShiftY
		text: "Red y"
		value: 0
		from: -1.
		to: 1.
	}
	Slider {
		id: gShiftX
		text: "Green x"
		value: 0
		from: -1.
		to: 1.
	}
	Slider {
		id: gShiftY
		text: "Green y"
		value: 0
		from: -1.
		to: 1.
	}
	Slider {
		id: bShiftX
		text: "Blue x"
		value: 0
		from: -1.
		to: 1.
	}
	Slider {
		id: bShiftY
		text: "Blue y"
		value: 0
		from: -1.
		to: 1.
	}

	Button {
		buttonText: "reset"
		type: C.Button.Type.Outlined
		onClicked: {
			rShiftX.value = 0
			rShiftY.value = 0
			gShiftX.value = 0
			gShiftY.value = 0
			bShiftX.value = 0
			bShiftY.value = 0
		}
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Item {
			id: image
			anchors.fill: parent

			Image {
				id: imageSource
				height: parent.height
				anchors.centerIn: parent
				fillMode: Image.PreserveAspectFit
				antialiasing: true
				smooth: true
				source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
			}
		}

		Item {
			anchors.fill: parent

			RgbShift {
				anchors.fill: parent
				rShift: Qt.point(rShiftX.value, rShiftY.value)
				gShift: Qt.point(gShiftX.value, gShiftY.value)
				bShift: Qt.point(bShiftX.value, bShiftY.value)
				source: image
			}
		}
	}
}
