import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	visible: true
	width: 640
	height: 600

	P.Segments {
		id: segment
		Layout.fillWidth: true
		text: "blur type"
		current: gaussian
		Segment {
			id: gaussian
			text: "Gaussian"
			value: Blur.Gaussian
		}
		Segment {
			text: "Radial"
			value: Blur.Radial
		}
	}
	P.Slider {
		id: radiusItem
		Layout.fillWidth: true
		text: "radius " + value
		from: 0
		to: 100
		value: 10.
	}
	P.Slider {
		id: qualityItem
		Layout.fillWidth: true
		text: "quality " + value
		from: 0
		to: 20
		value: 3
	}
	P.Button {
		buttonText: "reset"
		type: Button.Type.Outlined
		onClicked: {
			segment.current = gaussian
			radiusItem.value = 10.
			qualityItem.value = 3
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
		Blur {
			anchors.fill: parent
			source: image
			mode: segment.current.value
			radius: radiusItem.value
			quality: qualityItem.value
		}
	}
}
