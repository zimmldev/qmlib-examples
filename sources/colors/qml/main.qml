import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Colors
import Example

Window {
	implicitWidth: 900
	implicitHeight: 550

	Item {
		id: item
		Layout.fillHeight: true
		Layout.fillWidth: true

		ScrollView {
			id: scroll
			anchors.fill: parent

			Item {
				implicitHeight: Math.max(grid.implicitHeight, item.height)
				implicitWidth: Math.max(grid.implicitWidth, item.width)

				GridLayout {
					id: grid
					columns: 3
					anchors.centerIn: parent

					Column {
						ColorItem {
							color: pal.primary
							textColor: pal.onPrimary
							text: "primary"
						}

						ColorItem {
							color: pal.onPrimary
							textColor: pal.primary
							text: "onPrimary"
						}
					}

					Column {
						ColorItem {
							color: pal.secondary
							textColor: pal.onSecondary
							text: "secondary"
						}
						ColorItem {
							color: pal.onSecondary
							textColor: pal.secondary
							text: "onSecondary"
						}
					}

					Column {
						ColorItem {
							color: pal.tertiary
							textColor: pal.onTertiary
							text: "tertiary"
						}
						ColorItem {
							color: pal.onTertiary
							textColor: pal.tertiary
							text: "onTertiary"
						}
					}

					Column {
						ColorItem {
							color: pal.primaryContainer
							textColor: pal.onPrimaryContainer
							text: "primary container"
						}
						ColorItem {
							color: pal.onPrimaryContainer
							textColor: pal.primaryContainer
							text: "on primary container"
						}
					}

					Column {
						ColorItem {
							color: pal.secondaryContainer
							textColor: pal.onSecondaryContainer
							text: "secondary container"
						}
						ColorItem {
							color: pal.onSecondaryContainer
							textColor: pal.secondaryContainer
							text: "on secondary container"
						}
					}

					Column {
						ColorItem {
							color: pal.tertiaryContainer
							textColor: pal.onTertiaryContainer
							text: "tertiary container"
						}
						ColorItem {
							color: pal.onTertiaryContainer
							textColor: pal.tertiaryContainer
							text: "on tertiary container"
						}
					}

					Column {
						ColorItem {
							color: pal.error
							textColor: pal.onError
							text: "error"
						}
						ColorItem {
							color: pal.onError
							textColor: pal.error
							text: "onError"
						}
					}

					Column {
						ColorItem {
							color: pal.progress
							textColor: pal.onProgress
							text: "progress"
						}
						ColorItem {
							color: pal.onProgress
							textColor: pal.progress
							text: "onProgress"
						}
					}
					Column {
						ColorItem {
							color: pal.success
							textColor: pal.onSuccess
							text: "success"
						}
						ColorItem {
							color: pal.onSuccess
							textColor: pal.success
							text: "onSuccess"
						}
					}

					Column {
						ColorItem {
							color: pal.errorContainer
							textColor: pal.onErrorContainer
							text: "error container"
						}
						ColorItem {
							color: pal.onErrorContainer
							textColor: pal.errorContainer
							text: "on error container"
						}
					}
					Column {
						ColorItem {
							color: pal.progressContainer
							textColor: pal.onProgressContainer
							text: "progress container"
						}
						ColorItem {
							color: pal.onProgressContainer
							textColor: pal.progressContainer
							text: "on progress container"
						}
					}
					Column {
						ColorItem {
							color: pal.successContainer
							textColor: pal.onSuccessContainer
							text: "success container"
						}
						ColorItem {
							color: pal.onSuccessContainer
							textColor: pal.successContainer
							text: "on success container"
						}
					}

					Column {
						ColorItem {
							color: pal.surface
							textColor: pal.onSurface
							text: "surface"
						}
						ColorItem {
							color: pal.onSurface
							textColor: pal.surface
							text: "on surface"
						}
					}

					Column {
						ColorItem {
							color: pal.surfaceVariant
							textColor: pal.onSurfaceVariant
							text: "surface variant"
						}
						ColorItem {
							color: pal.onSurfaceVariant
							textColor: pal.surfaceVariant
							text: "on surface variant"
						}
					}
					Column {
						ColorItem {
							color: pal.background
							textColor: pal.onBackground
							text: "background"
						}

						ColorItem {
							color: pal.onBackground
							textColor: pal.background
							text: "on background"
						}
					}

					Text {
						text: "surface container"
						horizontalAlignment: Text.AlignHCenter
						Layout.columnSpan: 3
						color: pal.onSurface
					}

					RowLayout {
						Layout.columnSpan: 3
						ColorItem {
							color: pal.surfaceContainerLowest
							textColor: pal.onSurface
							text: "lowest"
							Layout.fillHeight: true
							Layout.fillWidth: true
						}
						ColorItem {
							color: pal.surfaceContainerLow
							textColor: pal.onSurface
							text: "low"
							Layout.fillHeight: true
							Layout.fillWidth: true
						}
						ColorItem {
							color: pal.surfaceContainer
							textColor: pal.onSurface
							text: "normal"
							Layout.fillHeight: true
							Layout.fillWidth: true
						}
						ColorItem {
							color: pal.surfaceContainerHigh
							textColor: pal.onSurface
							text: "high"
							Layout.fillHeight: true
							Layout.fillWidth: true
						}
						ColorItem {
							color: pal.surfaceContainerHighest
							textColor: pal.onSurface
							text: "highest"
							Layout.fillHeight: true
							Layout.fillWidth: true
						}
					}

					ColorItem {
						color: pal.surfaceDim
						textColor: pal.onSurface
						text: "surface Dim"
					}
					ColorItem {
						color: pal.surfaceBright
						textColor: pal.onSurface
						text: "surface bright"
					}
					ColorItem {
						color: pal.outline
						textColor: pal.surface
						text: "outline"
					}
					ColorItem {
						color: pal.outlineVariant
						textColor: pal.surface
						text: "outline variant"
					}
				}
			}
		}
	}
}
