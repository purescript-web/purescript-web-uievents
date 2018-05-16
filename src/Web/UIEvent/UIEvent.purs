module Web.UIEvent.UIEvent where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data UIEvent :: Type

fromEvent :: Event -> Maybe UIEvent
fromEvent = unsafeReadProtoTagged "UIEvent"

toEvent :: UIEvent -> Event
toEvent = unsafeCoerce
