module Web.UIEvent.UIEvent where

import Foreign (F, Foreign)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Internal.FFI (unsafeReadProtoTagged)
import Web.Event.Types (Event)

foreign import data UIEvent :: Type

toEvent :: UIEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F UIEvent
read = unsafeReadProtoTagged "UIEvent"
