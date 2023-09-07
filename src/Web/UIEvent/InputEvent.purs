module Web.UIEvent.InputEvent where

import Prelude

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.UIEvent.InputEvent.InputTypes (InputType, toEnumInputType)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data InputEvent :: Type

fromUIEvent :: UIEvent -> Maybe InputEvent
fromUIEvent = unsafeReadProtoTagged "InputEvent"

fromEvent :: Event -> Maybe InputEvent
fromEvent = unsafeReadProtoTagged "InputEvent"

toUIEvent :: InputEvent -> UIEvent
toUIEvent = unsafeCoerce

toEvent :: InputEvent -> Event
toEvent = unsafeCoerce

foreign import data_ :: InputEvent -> String

foreign import isComposing :: InputEvent -> Boolean

foreign import inputType_ :: InputEvent -> String

inputType :: InputEvent -> Maybe InputType
inputType = toEnumInputType <<< inputType_

