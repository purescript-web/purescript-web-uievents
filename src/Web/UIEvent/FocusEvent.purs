module Web.UIEvent.FocusEvent
  ( FocusEvent
  , fromUIEvent
  , fromEvent
  , toUIEvent
  , toEvent
  , relatedTarget
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Event.EventTarget (EventTarget)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data FocusEvent :: Type

fromUIEvent :: UIEvent -> Maybe FocusEvent
fromUIEvent = unsafeReadProtoTagged "FocusEvent"

fromEvent :: Event -> Maybe FocusEvent
fromEvent = unsafeReadProtoTagged "FocusEvent"

toUIEvent :: FocusEvent -> UIEvent
toUIEvent = unsafeCoerce

toEvent :: FocusEvent -> Event
toEvent = unsafeCoerce

foreign import _relatedTarget :: FocusEvent -> Nullable EventTarget

relatedTarget :: FocusEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget
