import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Icon 1.0
import Panel 1.0 as P
import Control 1.0 as C
import Colors 1.0
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		ScrollView {
			anchors.fill: parent

			Column {
				anchors.left: parent.left
				anchors.right: parent.right

				P.Section {
					title: "Button section"
					anchors.left: parent.left
					anchors.right: parent.right
					P.Button {
						text: "This is a button"
						buttonText: "button"
					}
					P.Button {
						text: "This is another button"
						buttonText: "button"
					}
				}

				P.Section {
					title: "Switch section"
					anchors.left: parent.left
					anchors.right: parent.right
					P.Switch {
						text: "This is a switch"
					}
					P.Switch {
						text: "This is another switch"
					}
				}
				P.Section {
					title: "Segment section"
					anchors.left: parent.left
					anchors.right: parent.right
					P.Segments {
						text: "This is a segment"
						C.Segment {
							text: "A"
						}
						C.Segment {
							text: "B"
						}
						C.Segment {
							text: "C"
						}
					}
					P.Segments {
						text: "This is another segment"
						C.Segment {
							text: "A"
						}
						C.Segment {
							text: "B"
						}
						C.Segment {
							text: "C"
						}
					}
				}

				P.Section {
					title: "Sping box section"
					anchors.left: parent.left
					anchors.right: parent.right
					P.SpinBox {
						text: "This is a spinbox"
					}
					P.SpinBox {
						text: "This is a spinbox"
						suffix: "blablabla"
					}
				}
			}
		}
	}
}
