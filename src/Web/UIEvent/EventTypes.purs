module Web.UIEvent.EventTypes where

import Web.Event.Event (EventType(..))

load :: EventType
load = EventType "load"

unload :: EventType
unload = EventType "unload"

abort :: EventType
abort = EventType "abort"

error :: EventType
error = EventType "error"

select :: EventType
select = EventType "select"
