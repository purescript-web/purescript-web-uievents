module Web.UIEvent.TouchEvent
  ( TouchEvent
  , toEvent
  , read
  , Touch
  , TouchList
  , screenX
  , screenY
  , clientX
  , clientY
  , pageX
  , pageY
  , target
  , length
  , item
  , touches
  , targetTouches
  , changedTouches
  , altKey
  , metaKey
  , ctrlKey
  , shiftKey
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event, EventTarget)

foreign import data TouchEvent :: Type

toEvent :: TouchEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F TouchEvent
read = unsafeReadTagged "TouchEvent"

foreign import data Touch :: Type

foreign import identifier :: Touch -> Int

foreign import screenX :: Touch -> Int

foreign import screenY :: Touch -> Int

foreign import clientX :: Touch -> Int

foreign import clientY :: Touch -> Int

foreign import pageX :: Touch -> Int

foreign import pageY :: Touch -> Int

foreign import target :: Touch -> EventTarget

foreign import data TouchList :: Type

foreign import length :: TouchList -> Int

foreign import _item :: Int -> TouchList -> Nullable Touch

item :: Int -> TouchList -> Maybe Touch
item i = toMaybe <<< _item i

foreign import touches :: TouchEvent -> TouchList

foreign import targetTouches :: TouchEvent -> TouchList

foreign import changedTouches :: TouchEvent -> TouchList

foreign import altKey :: TouchEvent -> Boolean

foreign import metaKey :: TouchEvent -> Boolean

foreign import ctrlKey :: TouchEvent -> Boolean

foreign import shiftKey :: TouchEvent -> Boolean
