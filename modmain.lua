local G = GLOBAL

local T = {
  DEBUG_MODE = not MODROOT:find('workshop-') and false,
  SKIN_QUEUE = {},
}
G.TUNING.AUTO_WEEKLY_GIFT = T

if T.DEBUG_MODE then
  local item = { item_id = 0, item_type = 'birdcage_pirate' }
  G.TheInput:AddKeyUpHandler(G.KEY_F2, function() table.insert(T.SKIN_QUEUE, item) end)
end

AddClassPostConstruct('widgets/controls', function(self)
  local GiftItemToast = require('widgets/gift_item_toast')

  if self.item_notification then self.item_notification:Hide() end

  self.fox_item_notification = self.topleft_root:AddChild(GiftItemToast())
  self.fox_item_notification:SetPosition(300, -115)
end)
