AddGamePostInit(function()
  GLOBAL.scheduler:ExecutePeriodic(GLOBAL.FRAMES, function()
    if not TheGlobalInstance then return end
    local unopened = #GLOBAL.TheInventory:GetUnopenedItems()
    if unopened > 0 then TheGlobalInstance:PushEvent('gift_received') end
  end)
end)

AddClassPostConstruct('widgets/controls', function(self)
  if self.item_notification then self.item_notification:Hide() end
end)

AddGlobalClassPostConstruct('frontend', 'FrontEnd', function(self)
  local Widget = require('widgets/widget')
  local GiftItemToast = require('widgets/gift_item_toast')

  if not self.fixoverlay then
    self.fixoverlay = self.overlayroot:AddChild(Widget(''))
    self.fixoverlay:SetVAnchor(GLOBAL.ANCHOR_MIDDLE)
    self.fixoverlay:SetHAnchor(GLOBAL.ANCHOR_MIDDLE)
    self.fixoverlay:SetScaleMode(GLOBAL.SCALEMODE_PROPORTIONAL)
  end

  self.skinopen = self.fixoverlay:AddChild(GiftItemToast())
  self.skinopen:SetPosition(-450, 250)
end)
