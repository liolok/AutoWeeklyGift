local T = TUNING.AUTO_WEEKLY_GIFT
local DEBUG = T and T.DEBUG_MODE or false

return {
  GetFirstUnopenedItem = function()
    if DEBUG then return T.SKIN_QUEUE end
    local items = TheInventory:GetUnopenedItems()
    return type(items) == 'table' and items[1]
  end,
  SetItemOpened = function(id)
    if DEBUG then
      table.remove(T.SKIN_QUEUE, #T.SKIN_QUEUE)
    else
      TheInventory:SetItemOpened(id)
    end
  end,
}
