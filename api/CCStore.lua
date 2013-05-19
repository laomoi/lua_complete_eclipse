-- @module CCStore

-----------------------
-- @function [parent=#CCStore] sharedStore
-- @param  void

-----------------------
-- @function [parent=#CCStore] purgeSharedStore
-- @param  void

-----------------------
-- @function [parent=#CCStore] postInitWithTransactionListenerLua
-- @param  self
-- @param  listener

-----------------------
-- @function [parent=#CCStore] canMakePurchases
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCStore] loadProductsLua
-- @param  self
-- @param  __LUA_TABLE__
-- @param  callback

-----------------------
-- @function [parent=#CCStore] cancelLoadProducts
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCStore] isProductLoaded
-- @param  self
-- @param  productId

-----------------------
-- @function [parent=#CCStore] purchase
-- @param  self
-- @param  productId

-----------------------
-- @function [parent=#CCStore] finishTransactionLua
-- @param  self
-- @param  transactionIdentifier

-----------------------
-- @function [parent=#CCStore] getReceiptVerifyMode
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCStore] setReceiptVerifyMode
-- @param  self
-- @param  mode
-- @param  true

-----------------------
-- @function [parent=#CCStore] getReceiptVerifyServerUrl
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCStore] setReceiptVerifyServerUrl
-- @param  self
-- @param  url

-----------------------
return nil
