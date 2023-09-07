module Web.UIEvent.InputEvent.InputTypes where

import Prelude

import Data.Maybe (Maybe(..))

data InputType
  = InsertText
  | InsertReplacementText
  | InsertLineBreak
  | InsertParagraph
  | InsertOrderedList
  | InsertUnorderedList
  | InsertHorizontalRule
  | InsertFromYank
  | InsertFromDrop
  | InsertFromPaste
  | InsertFromPasteAsQuotation
  | InsertTranspose
  | InsertCompositionText
  | InsertLink
  | DeleteWordBackward
  | DeleteWordForward
  | DeleteSoftLineBackward
  | DeleteSoftLineForward
  | DeleteEntireSoftLine
  | DeleteHardLineBackward
  | DeleteHardLineForward
  | DeleteByDrag
  | DeleteByCut
  | DeleteContent
  | DeleteContentBackward
  | DeleteContentForward
  | HistoryUndo
  | HistoryRedo
  | FormatBold
  | FormatItalic
  | FormatUnderline
  | FormatStrikeThrough
  | FormatSuperscript
  | FormatSubscript
  | FormatJustifyFull
  | FormatJustifyCenter
  | FormatJustifyRight
  | FormatJustifyLeft
  | FormatIndent
  | FormatOutdent
  | FormatRemove
  | FormatSetBlockTextDirection
  | FormatSetInlineTextDirection
  | FormatBackColor
  | FormatFontColor
  | FormatFontName

derive instance eqInputType :: Eq InputType

instance showInputType :: Show InputType where
  show = fromEnumInputType

toEnumInputType :: String -> Maybe InputType
toEnumInputType "insertText" = Just InsertText
toEnumInputType "insertReplacementText" = Just InsertReplacementText
toEnumInputType "insertLineBreak" = Just InsertLineBreak
toEnumInputType "insertParagraph" = Just InsertParagraph
toEnumInputType "insertOrderedList" = Just InsertOrderedList
toEnumInputType "insertUnorderedList" = Just InsertUnorderedList
toEnumInputType "insertHorizontalRule" = Just InsertHorizontalRule
toEnumInputType "insertFromYank" = Just InsertFromYank
toEnumInputType "insertFromDrop" = Just InsertFromDrop
toEnumInputType "insertFromPaste" = Just InsertFromPaste
toEnumInputType "insertFromPasteAsQuotation" = Just InsertFromPasteAsQuotation
toEnumInputType "insertTranspose" = Just InsertTranspose
toEnumInputType "insertCompositionText" = Just InsertCompositionText
toEnumInputType "insertLink" = Just InsertLink
toEnumInputType "deleteWordBackward" = Just DeleteWordBackward
toEnumInputType "deleteWordForward" = Just DeleteWordForward
toEnumInputType "deleteSoftLineBackward" = Just DeleteSoftLineBackward
toEnumInputType "deleteSoftLineForward" = Just DeleteSoftLineForward
toEnumInputType "deleteEntireSoftLine" = Just DeleteEntireSoftLine
toEnumInputType "deleteHardLineBackward" = Just DeleteHardLineBackward
toEnumInputType "deleteHardLineForward" = Just DeleteHardLineForward
toEnumInputType "deleteByDrag" = Just DeleteByDrag
toEnumInputType "deleteByCut" = Just DeleteByCut
toEnumInputType "deleteContent" = Just DeleteContent
toEnumInputType "deleteContentBackward" = Just DeleteContentBackward
toEnumInputType "deleteContentForward" = Just DeleteContentForward
toEnumInputType "historyUndo" = Just HistoryUndo
toEnumInputType "historyRedo" = Just HistoryRedo
toEnumInputType "formatBold" = Just FormatBold
toEnumInputType "formatItalic" = Just FormatItalic
toEnumInputType "formatUnderline" = Just FormatUnderline
toEnumInputType "formatStrikeThrough" = Just FormatStrikeThrough
toEnumInputType "formatSuperscript" = Just FormatSuperscript
toEnumInputType "formatSubscript" = Just FormatSubscript
toEnumInputType "formatJustifyFull" = Just FormatJustifyFull
toEnumInputType "formatJustifyCenter" = Just FormatJustifyCenter
toEnumInputType "formatJustifyRight" = Just FormatJustifyRight
toEnumInputType "formatJustifyLeft" = Just FormatJustifyLeft
toEnumInputType "formatIndent" = Just FormatIndent
toEnumInputType "formatOutdent" = Just FormatOutdent
toEnumInputType "formatRemove" = Just FormatRemove
toEnumInputType "formatSetBlockTextDirection" = Just FormatSetBlockTextDirection
toEnumInputType "formatSetInlineTextDirection" = Just FormatSetInlineTextDirection
toEnumInputType "formatBackColor" = Just FormatBackColor
toEnumInputType "formatFontColor" = Just FormatFontColor
toEnumInputType "formatFontName" = Just FormatFontName
toEnumInputType _ = Nothing

fromEnumInputType :: InputType -> String
fromEnumInputType InsertText = "insertText"
fromEnumInputType InsertReplacementText = "insertReplacementText"
fromEnumInputType InsertLineBreak = "insertLineBreak"
fromEnumInputType InsertParagraph = "insertParagraph"
fromEnumInputType InsertOrderedList = "insertOrderedList"
fromEnumInputType InsertUnorderedList = "insertUnorderedList"
fromEnumInputType InsertHorizontalRule = "insertHorizontalRule"
fromEnumInputType InsertFromYank = "insertFromYank"
fromEnumInputType InsertFromDrop = "insertFromDrop"
fromEnumInputType InsertFromPaste = "insertFromPaste"
fromEnumInputType InsertFromPasteAsQuotation = "insertFromPasteAsQuotation"
fromEnumInputType InsertTranspose = "insertTranspose"
fromEnumInputType InsertCompositionText = "insertCompositionText"
fromEnumInputType InsertLink = "insertLink"
fromEnumInputType DeleteWordBackward = "deleteWordBackward"
fromEnumInputType DeleteWordForward = "deleteWordForward"
fromEnumInputType DeleteSoftLineBackward = "deleteSoftLineBackward"
fromEnumInputType DeleteSoftLineForward = "deleteSoftLineForward"
fromEnumInputType DeleteEntireSoftLine = "deleteEntireSoftLine"
fromEnumInputType DeleteHardLineBackward = "deleteHardLineBackward"
fromEnumInputType DeleteHardLineForward = "deleteHardLineForward"
fromEnumInputType DeleteByDrag = "deleteByDrag"
fromEnumInputType DeleteByCut = "deleteByCut"
fromEnumInputType DeleteContent = "deleteContent"
fromEnumInputType DeleteContentBackward = "deleteContentBackward"
fromEnumInputType DeleteContentForward = "deleteContentForward"
fromEnumInputType HistoryUndo = "historyUndo"
fromEnumInputType HistoryRedo = "historyRedo"
fromEnumInputType FormatBold = "formatBold"
fromEnumInputType FormatItalic = "formatItalic"
fromEnumInputType FormatUnderline = "formatUnderline"
fromEnumInputType FormatStrikeThrough = "formatStrikeThrough"
fromEnumInputType FormatSuperscript = "formatSuperscript"
fromEnumInputType FormatSubscript = "formatSubscript"
fromEnumInputType FormatJustifyFull = "formatJustifyFull"
fromEnumInputType FormatJustifyCenter = "formatJustifyCenter"
fromEnumInputType FormatJustifyRight = "formatJustifyRight"
fromEnumInputType FormatJustifyLeft = "formatJustifyLeft"
fromEnumInputType FormatIndent = "formatIndent"
fromEnumInputType FormatOutdent = "formatOutdent"
fromEnumInputType FormatRemove = "formatRemove"
fromEnumInputType FormatSetBlockTextDirection = "formatSetBlockTextDirection"
fromEnumInputType FormatSetInlineTextDirection = "formatSetInlineTextDirection"
fromEnumInputType FormatBackColor = "formatBackColor"
fromEnumInputType FormatFontColor = "formatFontColor"
fromEnumInputType FormatFontName = "formatFontName"