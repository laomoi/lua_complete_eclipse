-- @module display

-----------------------
-- @field [parent=#display] sizeInPixels

-----------------------
-- @field [parent=#display] contentScaleFactor

-----------------------
-- @field [parent=#display] size

-----------------------
-- @field [parent=#display] width

-----------------------
-- @field [parent=#display] height

-----------------------
-- @field [parent=#display] cx

-----------------------
-- @field [parent=#display] cy

-----------------------
-- @field [parent=#display] c_left

-----------------------
-- @field [parent=#display] c_right

-----------------------
-- @field [parent=#display] c_top

-----------------------
-- @field [parent=#display] c_bottom

-----------------------
-- @field [parent=#display] left

-----------------------
-- @field [parent=#display] right

-----------------------
-- @field [parent=#display] top

-----------------------
-- @field [parent=#display] bottom

-----------------------
-- @field [parent=#display] widthInPixels

-----------------------
-- @field [parent=#display] heightInPixels

-----------------------
-- @field [parent=#display] widthInPixels

-----------------------
-- @field [parent=#display] heightInPixels

-----------------------
-- @field [parent=#display] contentScaleFactor

-----------------------
-- @field [parent=#display] width

-----------------------
-- @field [parent=#display] height

-----------------------
-- @field [parent=#display] cx

-----------------------
-- @field [parent=#display] cy

-----------------------
-- @field [parent=#display] left

-----------------------
-- @field [parent=#display] right

-----------------------
-- @field [parent=#display] top

-----------------------
-- @field [parent=#display] bottom

-----------------------
-- @field [parent=#display] c_left

-----------------------
-- @field [parent=#display] c_right

-----------------------
-- @field [parent=#display] c_top

-----------------------
-- @field [parent=#display] c_bottom

-----------------------
-- @field [parent=#display] COLOR_WHITE

-----------------------
-- @field [parent=#display] COLOR_BLACK

-----------------------
-- @field [parent=#display] CENTER

-----------------------
-- @field [parent=#display] LEFT_TOP

-----------------------
-- @field [parent=#display] TOP_LEFT

-----------------------
-- @field [parent=#display] CENTER_TOP

-----------------------
-- @field [parent=#display] TOP_CENTER

-----------------------
-- @field [parent=#display] RIGHT_TOP

-----------------------
-- @field [parent=#display] TOP_RIGHT

-----------------------
-- @field [parent=#display] CENTER_LEFT

-----------------------
-- @field [parent=#display] LEFT_CENTER

-----------------------
-- @field [parent=#display] CENTER_RIGHT

-----------------------
-- @field [parent=#display] RIGHT_CENTER

-----------------------
-- @field [parent=#display] BOTTOM_LEFT

-----------------------
-- @field [parent=#display] LEFT_BOTTOM

-----------------------
-- @field [parent=#display] BOTTOM_RIGHT

-----------------------
-- @field [parent=#display] RIGHT_BOTTOM

-----------------------
-- @field [parent=#display] BOTTOM_CENTER

-----------------------
-- @field [parent=#display] CENTER_BOTTOM

-----------------------
-- @field [parent=#display] ANCHOR_POINTS

-----------------------
-- @field [parent=#display] SCENE_TRANSITIONS

-----------------------
-- @field [parent=#display] TEXTURES_PIXEL_FORMAT

-----------------------
-- @function [parent=#display] setTexturePixelFormat
-- @param  filename
-- @param   format

-----------------------
-- @function [parent=#display] newScene
-- @param  name

-----------------------
-- @function [parent=#display] wrapSceneWithTransition
-- @param  scene
-- @param   transitionType
-- @param   time
-- @param   more

-----------------------
-- @function [parent=#display] replaceScene
-- @param  newScene
-- @param   transitionType
-- @param   time
-- @param   more

-----------------------
-- @function [parent=#display] getRunningScene

-----------------------
-- @function [parent=#display] pause

-----------------------
-- @function [parent=#display] resume

-----------------------
-- @function [parent=#display] newLayer

-----------------------
-- @function [parent=#display] newNode

-----------------------
-- @function [parent=#display] newClippingRegionNode
-- @param  rect

-----------------------
-- @function [parent=#display] newSprite
-- @param  filename
-- @param   x
-- @param   y

-----------------------
-- @function [parent=#display] newBackgroundSprite
-- @param  filename

-----------------------
-- @function [parent=#display] newBackgroundTilesSprite
-- @param  filename

-----------------------
-- @function [parent=#display] newCircle
-- @param  radius

-----------------------
-- @function [parent=#display] newRect
-- @param  width
-- @param   height

-----------------------
-- @function [parent=#display] newPolygon
-- @param  points
-- @param   scale

-----------------------
-- @function [parent=#display] align
-- @param  target
-- @param   anchorPoint
-- @param   x
-- @param   y

-----------------------
-- @function [parent=#display] pixels
-- @param  x
-- @param   y

-----------------------
-- @function [parent=#display] addSpriteFramesWithFile
-- @param  plistFilename
-- @param   image

-----------------------
-- @function [parent=#display] removeSpriteFramesWithFile
-- @param  plistFilename
-- @param   imageName

-----------------------
-- @function [parent=#display] removeSpriteFrameByImageName
-- @param  imageName

-----------------------
-- @function [parent=#display] newBatchNode
-- @param  image
-- @param   capacity

-----------------------
-- @function [parent=#display] newSpriteFrame
-- @param  frameName

-----------------------
-- @function [parent=#display] newSpriteWithFrame
-- @param  frame
-- @param   x
-- @param   y

-----------------------
-- @function [parent=#display] newFrames
-- @param  pattern
-- @param   begin
-- @param   length
-- @param   isReversed

-----------------------
-- @function [parent=#display] newAnimation
-- @param  frames
-- @param   time

-----------------------
-- @function [parent=#display] newAnimate
-- @param  animation

-----------------------
return nil
