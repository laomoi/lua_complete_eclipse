-- @module CCNode

-----------------------
-- @function [parent=#CCNode] getZOrder
-- @param  self

-----------------------
-- @function [parent=#CCNode] setZOrder
-- @param  self
-- @param  zorder

-----------------------
-- @function [parent=#CCNode] getVertexZ
-- @param  self

-----------------------
-- @function [parent=#CCNode] setVertexZ
-- @param  self
-- @param  var

-----------------------
-- @function [parent=#CCNode] getRotation
-- @param  self

-----------------------
-- @function [parent=#CCNode] setRotation
-- @param  self
-- @param  newRotation

-----------------------
-- @function [parent=#CCNode] getScale
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScale
-- @param  self
-- @param  scale

-----------------------
-- @function [parent=#CCNode] getScaleX
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScaleX
-- @param  self
-- @param  newScaleX

-----------------------
-- @function [parent=#CCNode] getScaleY
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScaleY
-- @param  self
-- @param  newScaleY

-----------------------
-- @function [parent=#CCNode] getPosition
-- @param  self
-- @param  0
-- @param  0

-----------------------
-- @function [parent=#CCNode] getPositionX
-- @param  self

-----------------------
-- @function [parent=#CCNode] getPositionY
-- @param  self

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  self
-- @param  x
-- @param  y

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  self
-- @param  pos

-----------------------
-- @function [parent=#CCNode] setPositionX
-- @param  self
-- @param  x

-----------------------
-- @function [parent=#CCNode] setPositionY
-- @param  self
-- @param  y

-----------------------
-- @function [parent=#CCNode] getSkewX
-- @param  self

-----------------------
-- @function [parent=#CCNode] setSkewX
-- @param  self
-- @param  skewX

-----------------------
-- @function [parent=#CCNode] getSkewY
-- @param  self

-----------------------
-- @function [parent=#CCNode] setSkewY
-- @param  self
-- @param  skewY

-----------------------
-- @function [parent=#CCNode] isVisible
-- @param  self

-----------------------
-- @function [parent=#CCNode] setVisible
-- @param  self
-- @param  var

-----------------------
-- @function [parent=#CCNode] getAnchorPoint
-- @param  self

-----------------------
-- @function [parent=#CCNode] getAnchorPointInPoints
-- @param  self

-----------------------
-- @function [parent=#CCNode] setAnchorPoint
-- @param  self
-- @param  point

-----------------------
-- @function [parent=#CCNode] getContentSize
-- @param  self

-----------------------
-- @function [parent=#CCNode] setContentSize
-- @param  self
-- @param  size

-----------------------
-- @function [parent=#CCNode] getTag
-- @param  self

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  self
-- @param  var

-----------------------
-- @function [parent=#CCNode] getCamera
-- @param  self

-----------------------
-- @function [parent=#CCNode] isRunning
-- @param  self

-----------------------
-- @function [parent=#CCNode] isIgnoreAnchorPointForPosition
-- @param  self

-----------------------
-- @function [parent=#CCNode] ignoreAnchorPointForPosition
-- @param  self
-- @param  newValue

-----------------------
-- @function [parent=#CCNode] getUserObject
-- @param  self

-----------------------
-- @function [parent=#CCNode] setUserObject
-- @param  self
-- @param  pObject

-----------------------
-- @function [parent=#CCNode] getOrderOfArrival
-- @param  self

-----------------------
-- @function [parent=#CCNode] setOrderOfArrival
-- @param  self
-- @param  order

-----------------------
-- @function [parent=#CCNode] getParent
-- @param  self

-----------------------
-- @function [parent=#CCNode] setParent
-- @param  self
-- @param  var

-----------------------
-- @function [parent=#CCNode] getChildren
-- @param  self

-----------------------
-- @function [parent=#CCNode] getChildrenCount
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] getChildByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child
-- @param  zOrder
-- @param  tag

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child

-----------------------
-- @function [parent=#CCNode] removeChild
-- @param  self
-- @param  child
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] removeChildByTag
-- @param  self
-- @param  tag
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] removeAllChildrenWithCleanup
-- @param  self
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] reorderChild
-- @param  self
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] cleanup
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] visit
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] transform
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] transformAncestors
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] boundingBox
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] runAction
-- @param  self
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopAllActions
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] stopAction
-- @param  self
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopActionByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] getActionByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] description
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] numberOfRunningActions
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] convertToNodeSpace
-- @param  self
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpace
-- @param  self
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertToNodeSpaceAR
-- @param  self
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpaceAR
-- @param  self
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpace
-- @param  self
-- @param  touch

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpaceAR
-- @param  self
-- @param  touch

-----------------------
-- @function [parent=#CCNode] removeFromParentAndCleanup
-- @param  self
-- @param  cleanup

-----------------------
-- @function [parent=#CCNode] scheduleUpdateWithPriorityLua
-- @param  self
-- @param  nHandler
-- @param  priority

-----------------------
-- @function [parent=#CCNode] unscheduleUpdate
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] registerScriptHandler
-- @param  self
-- @param  funcID

-----------------------
-- @function [parent=#CCNode] unregisterScriptHandler
-- @param  self
-- @param  void

-----------------------
return nil
