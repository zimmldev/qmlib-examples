import QtQuick

import Example 1.0

WindowList {
	id: mainWindow
	title: "Effects"
	model: ListModel {
		ListElement {
			text: "Black and White"
			url: "qrc:/qt/qml/EffectsExample/qml/main-blackandwhite.qml"
		}
		ListElement {
			text: "Blend"
			url: "qrc:/qt/qml/EffectsExample/qml/main-blend.qml"
		}
		ListElement {
			text: "Blur"
			url: "qrc:/qt/qml/EffectsExample/qml/main-blur.qml"
		}
		ListElement {
			text: "Contrast Brightness Saturation"
			url: "qrc:/qt/qml/EffectsExample/qml/main-contrastbrightnesssaturation.qml"
		}
		ListElement {
			text: "Drop shadow"
			url: "qrc:/qt/qml/EffectsExample/qml/main-dropshadow.qml"
		}
		ListElement {
			text: "Grey scale"
			url: "qrc:/qt/qml/EffectsExample/qml/main-greyscale.qml"
		}
		ListElement {
			text: "Halo"
			url: "qrc:/qt/qml/EffectsExample/qml/main-halo.qml"
		}
		ListElement {
			text: "Homography"
			url: "qrc:/qt/qml/EffectsExample/qml/main-homography.qml"
		}
		ListElement {
			text: "Lens"
			url: "qrc:/qt/qml/EffectsExample/qml/main-lens.qml"
		}
		ListElement {
			text: "Mask"
			url: "qrc:/qt/qml/EffectsExample/qml/main-mask.qml"
		}
		ListElement {
			text: "Rgb Shift"
			url: "qrc:/qt/qml/EffectsExample/qml/main-rgbshift.qml"
		}
	}
}

