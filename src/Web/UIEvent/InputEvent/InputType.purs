module Web.UIEvent.InputEvent.InputType where

import Prelude

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
  | Other String

derive instance eqInputType :: Eq InputType
derive instance ordInputType :: Ord InputType

instance showInputType :: Show InputType where
  show = print

parse :: String -> InputType
parse "insertText" = InsertText
parse "insertReplacementText" = InsertReplacementText
parse "insertLineBreak" = InsertLineBreak
parse "insertParagraph" = InsertParagraph
parse "insertOrderedList" = InsertOrderedList
parse "insertUnorderedList" = InsertUnorderedList
parse "insertHorizontalRule" = InsertHorizontalRule
parse "insertFromYank" = InsertFromYank
parse "insertFromDrop" = InsertFromDrop
parse "insertFromPaste" = InsertFromPaste
parse "insertFromPasteAsQuotation" = InsertFromPasteAsQuotation
parse "insertTranspose" = InsertTranspose
parse "insertCompositionText" = InsertCompositionText
parse "insertLink" = InsertLink
parse "deleteWordBackward" = DeleteWordBackward
parse "deleteWordForward" = DeleteWordForward
parse "deleteSoftLineBackward" = DeleteSoftLineBackward
parse "deleteSoftLineForward" = DeleteSoftLineForward
parse "deleteEntireSoftLine" = DeleteEntireSoftLine
parse "deleteHardLineBackward" = DeleteHardLineBackward
parse "deleteHardLineForward" = DeleteHardLineForward
parse "deleteByDrag" = DeleteByDrag
parse "deleteByCut" = DeleteByCut
parse "deleteContent" = DeleteContent
parse "deleteContentBackward" = DeleteContentBackward
parse "deleteContentForward" = DeleteContentForward
parse "historyUndo" = HistoryUndo
parse "historyRedo" = HistoryRedo
parse "formatBold" = FormatBold
parse "formatItalic" = FormatItalic
parse "formatUnderline" = FormatUnderline
parse "formatStrikeThrough" = FormatStrikeThrough
parse "formatSuperscript" = FormatSuperscript
parse "formatSubscript" = FormatSubscript
parse "formatJustifyFull" = FormatJustifyFull
parse "formatJustifyCenter" = FormatJustifyCenter
parse "formatJustifyRight" = FormatJustifyRight
parse "formatJustifyLeft" = FormatJustifyLeft
parse "formatIndent" = FormatIndent
parse "formatOutdent" = FormatOutdent
parse "formatRemove" = FormatRemove
parse "formatSetBlockTextDirection" = FormatSetBlockTextDirection
parse "formatSetInlineTextDirection" = FormatSetInlineTextDirection
parse "formatBackColor" = FormatBackColor
parse "formatFontColor" = FormatFontColor
parse "formatFontName" = FormatFontName
parse s = Other s

print :: InputType -> String
print InsertText = "insertText"
print InsertReplacementText = "insertReplacementText"
print InsertLineBreak = "insertLineBreak"
print InsertParagraph = "insertParagraph"
print InsertOrderedList = "insertOrderedList"
print InsertUnorderedList = "insertUnorderedList"
print InsertHorizontalRule = "insertHorizontalRule"
print InsertFromYank = "insertFromYank"
print InsertFromDrop = "insertFromDrop"
print InsertFromPaste = "insertFromPaste"
print InsertFromPasteAsQuotation = "insertFromPasteAsQuotation"
print InsertTranspose = "insertTranspose"
print InsertCompositionText = "insertCompositionText"
print InsertLink = "insertLink"
print DeleteWordBackward = "deleteWordBackward"
print DeleteWordForward = "deleteWordForward"
print DeleteSoftLineBackward = "deleteSoftLineBackward"
print DeleteSoftLineForward = "deleteSoftLineForward"
print DeleteEntireSoftLine = "deleteEntireSoftLine"
print DeleteHardLineBackward = "deleteHardLineBackward"
print DeleteHardLineForward = "deleteHardLineForward"
print DeleteByDrag = "deleteByDrag"
print DeleteByCut = "deleteByCut"
print DeleteContent = "deleteContent"
print DeleteContentBackward = "deleteContentBackward"
print DeleteContentForward = "deleteContentForward"
print HistoryUndo = "historyUndo"
print HistoryRedo = "historyRedo"
print FormatBold = "formatBold"
print FormatItalic = "formatItalic"
print FormatUnderline = "formatUnderline"
print FormatStrikeThrough = "formatStrikeThrough"
print FormatSuperscript = "formatSuperscript"
print FormatSubscript = "formatSubscript"
print FormatJustifyFull = "formatJustifyFull"
print FormatJustifyCenter = "formatJustifyCenter"
print FormatJustifyRight = "formatJustifyRight"
print FormatJustifyLeft = "formatJustifyLeft"
print FormatIndent = "formatIndent"
print FormatOutdent = "formatOutdent"
print FormatRemove = "formatRemove"
print FormatSetBlockTextDirection = "formatSetBlockTextDirection"
print FormatSetInlineTextDirection = "formatSetInlineTextDirection"
print FormatBackColor = "formatBackColor"
print FormatFontColor = "formatFontColor"
print FormatFontName = "formatFontName"
print (Other s) = s