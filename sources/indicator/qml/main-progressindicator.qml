import QtQuick
import QtQuick.Layouts

import Indicator 1.0
import Example 1.0
import Panel 1.0

Window {
	height: 400
	width: 400

	Slider {
		id: slider
		Layout.fillWidth: true
		text: "value " + value.toFixed(2)
		from: 0
		to: 1
		value: 0.5
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			ProgressIndicator {
				type: ProgressIndicator.Type.Linear
			}
			ProgressIndicator {
				type: ProgressIndicator.Type.Circular
			}
			ProgressIndicator {
				value: slider.value
				type: ProgressIndicator.Type.Linear
			}
			ProgressIndicator {
				value: slider.value
				type: ProgressIndicator.Type.Circular
			}
		}
	}
}
