module Web.UIEvent.UIEvent
  ( UIEvent
  , fromEvent
  , toEvent
  , view
  , detail
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.HTML (Window)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data UIEvent :: Type

fromEvent :: Event -> Maybe UIEvent
fromEvent = unsafeReadProtoTagged "UIEvent"

toEvent :: UIEvent -> Event
toEvent = unsafeCoerce

foreign import _view :: UIEvent -> Nullable Window

view :: UIEvent -> Maybe Window
view = toMaybe <<< _view

foreign import detail :: UIEvent -> Int
