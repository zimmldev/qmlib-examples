import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	id: mainWindow

	visible: true
	width: 640
	height: 480

	P.Segments {
		id: segment
		Layout.fillWidth: true
		text: "blend type"
		current: def
		Segment {
			id: def
			text: "Default"
			value: Blend.Default
		}
		Segment {
			text: "Addition"
			value: Blend.Addition
		}
		Segment {
			text: "Substract"
			value: Blend.Subtract
		}
	}
	P.Slider {
		id: ratioItem
		Layout.fillWidth: true
		text: "ratio " + value
		from: 0
		to: 1.
		value: 0.5
		enabled: segment.current === def
	}
	P.Button {
		buttonText: "reset"
		type: Button.Type.Outlined
		onClicked: {
			segment.current = def
			ratioItem.value = 0.5
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

			Item {
				id: foregroundImage
				anchors.fill: parent

				Image {
					id: foregroundSourceItem
					anchors.fill: parent
					fillMode: Image.PreserveAspectFit
					antialiasing: true
					smooth: true
					source: "qrc:/qt/qml/EffectsExample/images/sample2.jpg"
				}
			}

			Blend {
				anchors.fill: parent
				source: image
				foregroundSource: foregroundImage
				mode: segment.current.value
				ratio: ratioItem.value
			}
		}
	}
}
