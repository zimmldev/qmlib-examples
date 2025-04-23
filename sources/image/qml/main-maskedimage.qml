import QtQuick
import QtQuick.Layouts

import Image 1.0 as I
import Example 1.0
import Icon 1.0
import Effects 1.0 as E

Window {
	ListView {
		id: maskSelector
		Layout.fillWidth: true
		orientation: ListView.Horizontal
		implicitHeight: 100
		spacing: 10
		model: ListModel {
			ListElement {
				source: "qrc:/qt/qml/ImageExample/template/image1.png"
			}
			ListElement {
				source: "qrc:/qt/qml/ImageExample/template/image2.png"
			}
			ListElement {
				source: "qrc:/qt/qml/ImageExample/template/image3.png"
			}
			ListElement {
				source: "qrc:/qt/qml/ImageExample/template/image4.png"
			}
		}
		delegate: ColorizedIcon {
			id: icon
			height: 100
			source: model.source
			color: pal.onSurface

			MouseArea {
				anchors.fill: parent
				onClicked: {
					maskSelector.currentIndex = index
				}
			}
			Rectangle {
				anchors.fill: parent
				color: "transparent"
				border.color: pal.primary
				border.width: 2
				radius: 5
				visible: icon.ListView.isCurrentItem
			}
		}
	}

	ListView {
		id: sourceSelector
		Layout.fillWidth: true
		orientation: ListView.Horizontal
		implicitHeight: 200
		spacing: 10
		model: ListModel {
			ListElement {
				source: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				source: "qrc:/qt/qml/ImageExample/images/sample2.jpg"
			}
			ListElement {
				source: "qrc:/qt/qml/ImageExample/images/thumbnail.jpg"
			}
		}
		delegate: Item {
			id: image
			property alias source: imageItem.source
			height: 200
			width: height

			Rectangle {
				id: mask
				anchors.fill: parent
				radius: 5
			}

			Image {
				id: imageItem
				anchors.fill: parent
				source: model.source
				fillMode: Image.PreserveAspectCrop
				layer.enabled: true
				layer.effect: E.Mask {
					maskSource: mask
				}
			}

			MouseArea {
				anchors.fill: parent
				onClicked: {
					sourceSelector.currentIndex = index
				}
			}

			Rectangle {
				anchors.fill: parent
				color: "transparent"
				border.color: pal.primary
				border.width: 2
				radius: 5
				visible: image.ListView.isCurrentItem
			}
		}
	}

	I.MaskedImage {
		Layout.fillHeight: true
		Layout.fillWidth: true
		source: sourceSelector.currentItem.source
		mask: maskSelector.currentItem.source
	}
}
