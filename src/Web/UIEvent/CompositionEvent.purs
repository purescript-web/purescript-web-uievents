module Web.UIEvent.CompositionEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data CompositionEvent :: Type

toEvent :: CompositionEvent -> Event
toEvent = unsafeCoerce

toUIEvent :: CompositionEvent -> UIEvent
toUIEvent = unsafeCoerce

read :: Foreign -> F CompositionEvent
read = unsafeReadTagged "CompositionEvent"

foreign import data_ :: CompositionEvent -> String
