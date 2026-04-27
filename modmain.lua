local G = GLOBAL

TUNING.AUTO_WEEKLY_GIFT = {}

G.awg_test = function()
  TUNING.AUTO_WEEKLY_GIFT.DEBUG_MODE = true
  TUNING.AUTO_WEEKLY_GIFT.TEST_ITEM = { item_id = 0, item_type = 'birdcage_pirate' }
end

AddClassPostConstruct('widgets/controls', function(self)
  local GiftItemToast = require('widgets/gift_item_toast')

  if self.item_notification and not self.is_item_notification_replaced then
    self.item_notification:Hide()
  end

  self.item_notification = self.topleft_root:AddChild(GiftItemToast())
  self.item_notification:SetPosition(300, -115)
  self.is_item_notification_replaced = true
end)
