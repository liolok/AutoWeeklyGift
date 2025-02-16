local T = TUNING.AUTO_WEEKLY_GIFT
local DEBUG = T and T.DEBUG_MODE or false

return {
  GetSkins = function() return DEBUG and T.SKIN_QUEUE or TheInventory:GetUnopenedItems() end,
  SetItemOpened = function(id)
    if DEBUG then
      table.remove(T.SKIN_QUEUE, #T.SKIN_QUEUE)
    else
      TheInventory:SetItemOpened(id)
    end
  end,
}
