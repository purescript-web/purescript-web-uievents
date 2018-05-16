module Web.UIEvent.InputEvent where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data InputEvent :: Type

fromUIEvent :: UIEvent -> Maybe InputEvent
fromUIEvent = unsafeReadProtoTagged "InputEvent"

fromEvent :: Event -> Maybe InputEvent
fromEvent = unsafeReadProtoTagged "InputEvent"

toUIEvent :: InputEvent -> UIEvent
toUIEvent = unsafeCoerce

toEvent :: InputEvent -> Event
toEvent = unsafeCoerce

foreign import data_ :: InputEvent -> String

foreign import isComposing :: InputEvent -> Boolean
