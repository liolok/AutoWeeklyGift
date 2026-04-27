local T = TUNING.AUTO_WEEKLY_GIFT

return {
  GetFirstUnopenedItem = function()
    if T.DEBUG_MODE and T.TEST_ITEM then return T.TEST_ITEM end
    local items = TheInventory:GetUnopenedItems()
    return type(items) == 'table' and items[1]
  end,
  SetItemOpened = function(id)
    if T.DEBUG_MODE and T.TEST_ITEM then
      T.TEST_ITEM = nil
    else
      TheInventory:SetItemOpened(id)
    end
  end,
}
