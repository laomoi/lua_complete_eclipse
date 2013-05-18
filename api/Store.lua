-- @module Store

-----------------------
-- @function [parent=#Store] init
-- @param  listener

-----------------------
-- @function [parent=#Store] getReceiptVerifyMode

-----------------------
-- @function [parent=#Store] setReceiptVerifyMode
-- @param  mode
-- @param  isSandbox

-----------------------
-- @function [parent=#Store] getReceiptVerifyServerUrl

-----------------------
-- @function [parent=#Store] setReceiptVerifyServerUrl
-- @param  url

-----------------------
-- @function [parent=#Store] canMakePurchases

-----------------------
-- @function [parent=#Store] loadProducts
-- @param  productsId
-- @param  listener

-----------------------
-- @function [parent=#Store] cancelLoadProducts

-----------------------
-- @function [parent=#Store] isProductLoaded
-- @param  productId

-----------------------
-- @function [parent=#Store] purchase
-- @param  productId

-----------------------
-- @function [parent=#Store] finishTransaction
-- @param  transaction

-----------------------
return nil
