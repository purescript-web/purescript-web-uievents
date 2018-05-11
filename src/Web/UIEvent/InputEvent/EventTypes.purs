module Web.UIEvent.InputEvent.EventTypes where

import Web.Event.Event (EventType(..))

beforeinput :: EventType
beforeinput = EventType "beforeinput"

input :: EventType
input = EventType "input"
