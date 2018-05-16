module Web.UIEvent.CompositionEvent where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data CompositionEvent :: Type

fromUIEvent :: UIEvent -> Maybe CompositionEvent
fromUIEvent = unsafeReadProtoTagged "CompositionEvent"

fromEvent :: Event -> Maybe CompositionEvent
fromEvent = unsafeReadProtoTagged "CompositionEvent"

toUIEvent :: CompositionEvent -> UIEvent
toUIEvent = unsafeCoerce

toEvent :: CompositionEvent -> Event
toEvent = unsafeCoerce

foreign import data_ :: CompositionEvent -> String
