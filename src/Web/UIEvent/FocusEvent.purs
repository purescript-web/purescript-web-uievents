module Web.UIEvent.FocusEvent
  ( FocusEvent
  , toEvent
  , toUIEvent
  , read
  , relatedTarget
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event, EventTarget)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data FocusEvent :: Type

toEvent :: FocusEvent -> Event
toEvent = unsafeCoerce

toUIEvent :: FocusEvent -> UIEvent
toUIEvent = unsafeCoerce

read :: Foreign -> F FocusEvent
read = unsafeReadTagged "FocusEvent"

foreign import _relatedTarget :: FocusEvent -> Nullable EventTarget

relatedTarget :: FocusEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget
