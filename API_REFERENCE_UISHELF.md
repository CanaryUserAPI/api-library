-- API Reference for UIShelf --

Keyword: `self`
Meaning: `self` is the icon which any function was called on.

-- 1
.new() Constructor
**Description: Creates a new icon waiting for placement**

-- 2
:bindIconEvent(eventType, function)
**Description: Binds an event to an icon**
**eventTypes (args (1)): "MouseClick", "MouseEnter", "OnRemoving", "MouseLeave", "TouchTap", "MouseMoved", "OnNoticeAdded"**

-- 3
:setRight()
**Description: Sets `self` to the right**

:setLeft()
**Description: Sets `self` to the left**

-- 4
:setTopbarState(enabled)
**Description: Sets the entire topbar to `enabled`**

:getTopbarState() return `bool` 
**Description: Returns the current state of the topbar**

-- 5
:remove()
**Description: Removes `self` from the topbar**

-- 6
:setOrder(order)
**Description: Sets the layour order of `self` to `order`**

-- 7
:setName(name)
**Description: Sets the name property of `self` to `name`**

-- 8
:setImage(imagePath)
**Description: Sets the image of `self` to `imagePath`**

-- 9
:notify(amount)
**Description: Constructs a new notice object that is parented to `self` and sets the amount of notices in it to `amount`**

-- 10
:clearNotices()
**Description: Clears all notices that were created in `self`**

-- 11
:returnNoticeAmount(): return `number`
**Description: Returns a number of notices that are related to `self`**

-- 12
:setVisibility(enabled)
**Description: Sets the visibility to `self` to `enabled`**

-- 13
:returnImage(returnImagePath): return `string`
**Description: Based on `returnImagePath`, calling this on `self` will give you the ImageId or full path of `self`'s image**

-- 14
:returnOrder(): return `number`
**Description: Returns the LayoutOrder on `self`**

-- 15
:returnLocation(): return `string`
**Description: Returns the location (or side) or the image**
**Returns: "Left" or "Right"**

-- 14
:returnOrder(): return `number`
**Description: Returns the LayoutOrder on `self`**

-- Sorry! This documentation is still under construction, but we have covered the most important functions.
