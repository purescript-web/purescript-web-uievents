module Web.UIEvent.MouseEvent.EventTypes where

import Web.Event.Event (EventType(..))

click :: EventType
click = EventType "click"

dblclick :: EventType
dblclick = EventType "dblclick"

mousedown :: EventType
mousedown = EventType "mousedown"

mouseenter :: EventType
mouseenter = EventType "mouseenter"

mouseleave :: EventType
mouseleave = EventType "mouseleave"

mousemove :: EventType
mousemove = EventType "mousemove"

mouseout :: EventType
mouseout = EventType "mouseout"

mouseover :: EventType
mouseover = EventType "mouseover"

mouseup :: EventType
mouseup = EventType "mouseup"
