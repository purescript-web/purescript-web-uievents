module Web.UIEvent.MouseEvent
  ( MouseEvent
  , toEvent
  , toUIEvent
  , read
  , screenX
  , screenY
  , clientX
  , clientY
  , pageX
  , pageY
  , ctrlKey
  , shiftKey
  , altKey
  , metaKey
  , button
  , relatedTarget
  , buttons
  , getModifierState
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event, EventTarget)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data MouseEvent :: Type

toEvent :: MouseEvent -> Event
toEvent = unsafeCoerce

toUIEvent :: MouseEvent -> UIEvent
toUIEvent = unsafeCoerce

read :: Foreign -> F MouseEvent
read = unsafeReadTagged "MouseEvent"

foreign import screenX :: MouseEvent -> Int

foreign import screenY :: MouseEvent -> Int

foreign import clientX :: MouseEvent -> Int

foreign import clientY :: MouseEvent -> Int

foreign import pageX :: MouseEvent -> Int

foreign import pageY :: MouseEvent -> Int

foreign import ctrlKey :: MouseEvent -> Boolean

foreign import shiftKey :: MouseEvent -> Boolean

foreign import altKey :: MouseEvent -> Boolean

foreign import metaKey :: MouseEvent -> Boolean

foreign import button :: MouseEvent -> Int

foreign import _relatedTarget :: MouseEvent -> Nullable EventTarget

relatedTarget :: MouseEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget

foreign import buttons :: MouseEvent -> Int

foreign import getModifierState
  :: String
  -> MouseEvent
  -> Effect Boolean
