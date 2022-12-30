QT += quick
QT += gui
QT += core

SOURCES += \
        data.cpp \
        main.cpp

resources.files = qml/MyCVTemplate.qml
resources.prefix = /$${TARGET}
RESOURCES += resources
RESOURCES += $$files(qml/*)
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = qml/imports
QT += core
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    qml/About.qml \
    qml/About.ui.qml \
    qml/AboutMe.qml \
    qml/ArrowBack.qml \
    qml/ArticleElement.qml \
    qml/CircularIndicator.qml \
    qml/Comment.qml \
    qml/Comment.ui.qml \
    qml/ContactInfoItem.qml \
    qml/ContactInfoItem.ui.qml \
    qml/CustomLabel.qml \
    qml/CustomLabel.ui.qml \
    qml/CustomLabel1.qml \
    qml/CustomLabel2.qml \
    qml/Divider.qml \
    qml/Divider.ui.qml \
    qml/Education.qml \
    qml/Experience.qml \
    qml/Info.ui.qml \
    qml/LeftSide.qml \
    qml/LeftSide.ui.qml \
    qml/MenuBar.qml \
    qml/MenuBar.ui.qml \
    qml/MyCVTemplate.qml \
    qml/PageIndicator.qml \
    qml/Progressbar.qml \
    qml/ProjectBackGround.qml \
    qml/ProjectDetails.qml \
    qml/ProjectGrid.qml \
    qml/ProjectItem.qml \
    qml/Projects.qml \
    qml/Projects.ui.qml \
    qml/RightSide.qml \
    qml/RightSide.ui.qml \
    qml/Screen01.qml \
    qml/Screen01.ui.qml \
    qml/Service.qml \
    qml/Service.ui.qml \
    qml/Stacklayoutframe.qml \
    qml/Swiper.qml \
    qml/Test.qml \
    qml/Test2.qml \
    qml/Test3.qml \
    qml/TextButton.qml \
    qml/TextButton.ui.qml \
    qml/VirticalDivider.qml \
    qml/assets/14_79.png \
    qml/assets/14_92.png \
    qml/assets/21_507.png \
    qml/assets/21_525.png \
    qml/assets/21_537.png \
    qml/assets/43_323.png \
    qml/assets/43_438.png \
    qml/assets/I21_839_21_729_14_23.png \
    qml/assets/account.png \
    qml/assets/b5843930-1c13-5047-acaf-3b479ce38f45.png \
    qml/assets/back.png \
    qml/assets/back_active.png \
    qml/assets/catego.png \
    qml/assets/date.png \
    qml/assets/demoWS.png \
    qml/assets/edu.png \
    qml/assets/elab_pre.png \
    qml/assets/email.png \
    qml/assets/exper.png \
    qml/assets/eye.png \
    qml/assets/location.png \
    qml/imports/MyCVTemplate/Constants.qml \
    qml/imports/MyCVTemplate/qmldir \
    qml/imports/QtQuick/Studio/Components/ArcItem.qml \
    qml/imports/QtQuick/Studio/Components/BorderItem.qml \
    qml/imports/QtQuick/Studio/Components/FlipableItem.qml \
    qml/imports/QtQuick/Studio/Components/IsoItem.qml \
    qml/imports/QtQuick/Studio/Components/PieItem.qml \
    qml/imports/QtQuick/Studio/Components/RectangleItem.qml \
    qml/imports/QtQuick/Studio/Components/SvgPathItem.qml \
    qml/imports/QtQuick/Studio/Components/TriangleItem.qml \
    qml/imports/QtQuick/Studio/Components/designer/ArcItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/BorderItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/BorderModeComboBox.qml \
    qml/imports/QtQuick/Studio/Components/designer/CapComboBox.qml \
    qml/imports/QtQuick/Studio/Components/designer/DashPatternEditor.qml \
    qml/imports/QtQuick/Studio/Components/designer/FlipableItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/IsoItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/MyPlugin.metainfo \
    qml/imports/QtQuick/Studio/Components/designer/PieItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/RectangleItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/SvgPathItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/TriangleItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/qmldir \
    qml/imports/QtQuick/Studio/Effects/BlendItem.qml \
    qml/imports/QtQuick/Studio/Effects/BrightnessContrastItem.qml \
    qml/imports/QtQuick/Studio/Effects/ColorOverlayItem.qml \
    qml/imports/QtQuick/Studio/Effects/ColorizeItem.qml \
    qml/imports/QtQuick/Studio/Effects/DirectionalBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/DropShadowItem.qml \
    qml/imports/QtQuick/Studio/Effects/FastBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/GaussianBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/GlowItem.qml \
    qml/imports/QtQuick/Studio/Effects/HueSaturationItem.qml \
    qml/imports/QtQuick/Studio/Effects/MaskItem.qml \
    qml/imports/QtQuick/Studio/Effects/MaskedBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/RadialBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/RotationItem.qml \
    qml/imports/QtQuick/Studio/Effects/SaturationItem.qml \
    qml/imports/QtQuick/Studio/Effects/ZoomBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/designer/BrightnessContrastItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ColorOverlayItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ColorizeItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/DirectionalBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/DropShadowItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/FastBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/GlowItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/HueSaturationItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/MyPlugin.metainfo \
    qml/imports/QtQuick/Studio/Effects/designer/RadialBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/SaturationItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ZoomBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/qmldir \
    qtquickcontrols2.conf

HEADERS += \
    data.h
