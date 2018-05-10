module Web.UIEvent.InputEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data InputEvent :: Type

toEvent :: InputEvent -> Event
toEvent = unsafeCoerce

toUIEvent :: InputEvent -> UIEvent
toUIEvent = unsafeCoerce

read :: Foreign -> F InputEvent
read = unsafeReadTagged "InputEvent"

foreign import data_ :: InputEvent -> String

foreign import isComposing :: InputEvent -> Boolean
