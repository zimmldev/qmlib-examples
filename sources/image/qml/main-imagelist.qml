import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as C

import Image 1.0
import Example 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	id: window

	property SelectionModel selection: SelectionModel {}

	function getModel() {
		if (typeof gallerymodel !== "undefined")
			return gallerymodel.proxy
		return null
	}

	P.Button {
		text: "Image B"
		type: Button.Outlined
		buttonText: "open"

		onClicked: {
			imageList.open("b")
		}
	}

	Rectangle {
		Layout.fillWidth: true
		height: 50
		color: pal.surfaceContainer
		Text {
			anchors.left: parent.left
			anchors.verticalCenter: parent.verticalCenter
			anchors.margins: 10
			visible: window.selection.active
			text: window.selection.count + " image" + (window.selection.count > 1 ? "s" : "") + " selected<br>(" + window.selection.all() + ")"
		}
	}

	Rectangle {
		Layout.fillHeight: true
		Layout.fillWidth: true
		color: pal.surfaceContainerHighest
		ImageList {
			id: imageList
			anchors.fill: parent
			anchors.leftMargin: 20
			anchors.rightMargin: 20
			selection: window.selection
			toOpen: "c"
			actions: [
				C.Action {
					icon.source: "qrc:/qt/qml/Control/icons/check.png"
					onTriggered: function(object){
						console.log("TRIGGERED CHECK " + object.uid)
					}
				},
				C.Action {
					icon.source: "qrc:/qt/qml/Control/icons/close.png"
					onTriggered: function(object){
						console.log("TRIGGERED CLOSE " + object.uid)
					}
				}
			]

			property var list: ListModel {
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/thumbnail.jpg"
					image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
					uid: "a"
				}
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/sample2.jpg"
					image: "qrc:/qt/qml/ImageExample/images/sample2.jpg"
					uid: "b"
				}
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/thumbnail.jpg"
					image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
					uid: "c"
				}
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/sample2.jpg"
					image: "qrc:/qt/qml/ImageExample/images/sample2.jpg"
					uid: "d"
				}
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/thumbnail.jpg"
					image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
					uid: "e"
				}
				ListElement {
					thumbnail: "qrc:/qt/qml/ImageExample/images/thumbnail.jpg"
					image: "qrc:/qt/qml/ImageExample/images/video.mp4"
					uid: "f"
				}
			}

			Component.onCompleted: {
				model = list
			}
		}
	}

	Rectangle {
		Layout.fillWidth: true
		height: 50
		color: pal.surfaceContainer
	}
}
