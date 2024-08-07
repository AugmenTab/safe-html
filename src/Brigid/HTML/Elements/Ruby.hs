-- This module is designed to make building Ruby symbols safer by exposing only one
-- constructor that explicitly takes the symbol and pronunciation guide, then builds
-- a fully-formed `ruby` tag around them. It is intended that the user imports it
-- qualified, optimally as `Ruby`.
module Brigid.HTML.Elements.Ruby
  ( ruby
  ) where

import Data.Text qualified as T

import Brigid.HTML.Attributes.Internal (Attribute)
import Brigid.HTML.Elements qualified as E
import Brigid.HTML.Elements.Children (ValidChild)
import Brigid.HTML.Elements.Tags (Ruby)

ruby :: ValidChild Ruby parent grandparent
     => [Attribute Ruby]
     -> T.Text
     -> T.Text
     -> E.ChildHTML parent grandparent
ruby attrs symbol txt =
  E.ruby attrs
    [ E.text symbol
    , E.rp []
        [ E.text "(" ]
    , E.rt []
        [ E.text txt ]
    , E.rp []
        [ E.text ")" ]
    ]
