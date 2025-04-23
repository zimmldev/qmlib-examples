import QtQuick
import QtQuick.Layouts

import Indicator 1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 400
	width: 400
	
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.fill: parent	
			P.Switch {
				id: valueSwitch
				text: "set value"
			}
			
			P.Switch {
				id: showValueSwitch
				text: "show value"
				enabled: valueSwitch.checked
				checked: true
			}
			
			P.Slider {
				id: valueItem
				text: "value " + value.toFixed(2)
				from: 0
				to: 1
				value: 0.5
				enabled: valueSwitch.checked
			}
		}

		ProgressOverlay {
			value: valueSwitch.checked ? valueItem.value : undefined
			showValue: showValueSwitch.checked
		}
	}
}
