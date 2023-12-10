{-# LANGUAGE DataKinds #-}

module Data.HTML
  ( -- example
  ) where

-- import Data.Text qualified as T

-- import Data.HTML.Elements qualified as H
-- import Data.HTML.Attributes qualified as A

  {-
example :: H.ValidChildOf parent
example =
  -- This attribute assignment should be failing, but isn't.
  H.div [ A.id $ T.pack "div-id" ]
    [ H.img []
    , H.span []
        [ H.div []
            [ H.b []
                [ H.h1 []
                    -- These should both be failing, but neither is.
                    [ H.a [] []
                    , H.h1 [] []
                    ]
                ]
            ]
        ]
 -- This should be compiling, but isn't.
 -- , H.div []
 --     example2
    -- This should be failing, but it isn't.
    , H.a [ A.id $ T.pack "anchor-id" ]
        [ example1
        ]
    ]

example1 :: H.ValidChildOf H.Anchor
example1 = H.h1 [] [ H.img [] ]

-- example2 :: [H.HTML H.Division H.Division]
-- example2 =
--   [ H.div [] []
--   , H.div [] []
--   , H.div [] []
--   ]
--   -}
