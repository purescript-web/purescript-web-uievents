module Web.UIEvent.UIEvent where

import Foreign (F, Foreign)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Internal.FFI (unsafeReadProtoTagged)
import Web.Event.Types (Event)

foreign import data UIEvent :: Type

uiEventToEvent :: UIEvent -> Event
uiEventToEvent = unsafeCoerce

readUIEvent :: Foreign -> F UIEvent
readUIEvent = unsafeReadProtoTagged "UIEvent"
