module Web.UIEvent.CompositionEvent.EventTypes where

import Web.Event.Event (EventType(..))

compositionstart :: EventType
compositionstart = EventType "compositionstart"

compositionupdate :: EventType
compositionupdate = EventType "compositionupdate"

compositionend :: EventType
compositionend = EventType "compositionend"
