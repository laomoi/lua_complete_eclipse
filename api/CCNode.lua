-- @module CCNode

-----------------------
-- @function [parent=#CCNode] getZOrder

-----------------------
-- @function [parent=#CCNode] setZOrder
-- @param  zorder

-----------------------
-- @function [parent=#CCNode] getVertexZ

-----------------------
-- @function [parent=#CCNode] setVertexZ
-- @param  var

-----------------------
-- @function [parent=#CCNode] getRotation

-----------------------
-- @function [parent=#CCNode] setRotation
-- @param  newRotation

-----------------------
-- @function [parent=#CCNode] getScale

-----------------------
-- @function [parent=#CCNode] setScale
-- @param  scale

-----------------------
-- @function [parent=#CCNode] getScaleX

-----------------------
-- @function [parent=#CCNode] setScaleX
-- @param  newScaleX

-----------------------
-- @function [parent=#CCNode] getScaleY

-----------------------
-- @function [parent=#CCNode] setScaleY
-- @param  newScaleY

-----------------------
-- @function [parent=#CCNode] getPosition
-- @param  0
-- @param  0

-----------------------
-- @function [parent=#CCNode] getPositionX

-----------------------
-- @function [parent=#CCNode] getPositionY

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  x
-- @param  y

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  pos

-----------------------
-- @function [parent=#CCNode] setPositionX
-- @param  x

-----------------------
-- @function [parent=#CCNode] setPositionY
-- @param  y

-----------------------
-- @function [parent=#CCNode] getSkewX

-----------------------
-- @function [parent=#CCNode] setSkewX
-- @param  skewX

-----------------------
-- @function [parent=#CCNode] getSkewY

-----------------------
-- @function [parent=#CCNode] setSkewY
-- @param  skewY

-----------------------
-- @function [parent=#CCNode] isVisible

-----------------------
-- @function [parent=#CCNode] setVisible
-- @param  var

-----------------------
-- @function [parent=#CCNode] getAnchorPoint

-----------------------
-- @function [parent=#CCNode] getAnchorPointInPoints

-----------------------
-- @function [parent=#CCNode] setAnchorPoint
-- @param  point

-----------------------
-- @function [parent=#CCNode] getContentSize

-----------------------
-- @function [parent=#CCNode] setContentSize
-- @param  size

-----------------------
-- @function [parent=#CCNode] getTag

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  var

-----------------------
-- @function [parent=#CCNode] getCamera

-----------------------
-- @function [parent=#CCNode] isRunning

-----------------------
-- @function [parent=#CCNode] isIgnoreAnchorPointForPosition

-----------------------
-- @function [parent=#CCNode] ignoreAnchorPointForPosition
-- @param  newValue

-----------------------
-- @function [parent=#CCNode] getUserObject

-----------------------
-- @function [parent=#CCNode] setUserObject
-- @param  pObject

-----------------------
-- @function [parent=#CCNode] getOrderOfArrival

-----------------------
-- @function [parent=#CCNode] setOrderOfArrival
-- @param  order

-----------------------
-- @function [parent=#CCNode] getParent

-----------------------
-- @function [parent=#CCNode] setParent
-- @param  var

-----------------------
-- @function [parent=#CCNode] getChildren

-----------------------
-- @function [parent=#CCNode] getChildrenCount
-- @param  void

-----------------------
-- @function [parent=#CCNode] getChildByTag
-- @param  tag

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  child
-- @param  zOrder
-- @param  tag

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  child

-----------------------
-- @function [parent=#CCNode] removeChild
-- @param  child
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] removeChildByTag
-- @param  tag
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] removeAllChildrenWithCleanup
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] reorderChild
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] cleanup
-- @param  void

-----------------------
-- @function [parent=#CCNode] visit
-- @param  void

-----------------------
-- @function [parent=#CCNode] transform
-- @param  void

-----------------------
-- @function [parent=#CCNode] transformAncestors
-- @param  void

-----------------------
-- @function [parent=#CCNode] boundingBox
-- @param  void

-----------------------
-- @function [parent=#CCNode] runAction
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopAllActions
-- @param  void

-----------------------
-- @function [parent=#CCNode] stopAction
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopActionByTag
-- @param  tag

-----------------------
-- @function [parent=#CCNode] getActionByTag
-- @param  tag

-----------------------
-- @function [parent=#CCNode] description
-- @param  void

-----------------------
-- @function [parent=#CCNode] numberOfRunningActions
-- @param  void

-----------------------
-- @function [parent=#CCNode] convertToNodeSpace
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpace
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertToNodeSpaceAR
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpaceAR
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpace
-- @param  touch

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpaceAR
-- @param  touch

-----------------------
-- @function [parent=#CCNode] removeFromParentAndCleanup
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] scheduleUpdateWithPriorityLua
-- @param  nHandler
-- @param  priority

-----------------------
-- @function [parent=#CCNode] unscheduleUpdate
-- @param  void

-----------------------
-- @function [parent=#CCNode] registerScriptHandler
-- @param  funcID

-----------------------
-- @function [parent=#CCNode] unregisterScriptHandler
-- @param  void

-----------------------
-- @function [parent=#CCNode] create
-- @param  void

-----------------------
return nil
