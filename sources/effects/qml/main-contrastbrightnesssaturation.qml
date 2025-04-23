import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Panel 1.0
import Control 1.0 as C

Window {
	visible: true
	width: 640
	height: 700

	Slider {
		id: contrastItem
		text: "contrast"
		from: -1.
		to: 1.
		value: 0.
	}
	Slider {
		id: brightnessItem
		text: "brightness"
		from: -1.
		to: 1.
		value: 0.
	}
	Slider {
		id: saturationItem
		text: "saturation"
		from: -1.
		to: 1.
		value: 0.
	}
	Button {
		buttonText: "reset"
		type: C.Button.Type.Outlined
		onClicked: {
			contrastItem.value = 0
			brightnessItem.value = 0
			saturationItem.value = 0
		}
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Image {
			id: image
			anchors.fill: parent
			fillMode: Image.PreserveAspectFit
			antialiasing: true
			smooth: true
			source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
		}

		ContrastBrightnessSaturation {
			anchors.fill: parent
			source: image
			contrast: contrastItem.value
			brightness: brightnessItem.value
			saturation: saturationItem.value
		}
	}
}
