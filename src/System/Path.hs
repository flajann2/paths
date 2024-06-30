{-# LANGUAGE CPP                       #-}
{-# LANGUAGE ExistentialQuantification #-}

-- | A more type-safe version of file paths
--
-- This module provides the basic 'Path' abstraction. See also
-- "System.Path.IO" which extends this module by thin wrappers
-- wrappers around common 'IO' operations.
module System.Path (
    -- * Paths
    Path
    -- * FilePath-like operations on paths with arbitrary roots
  , takeDirectory
  , takeFileName

    -- ** Operations aware of file-extensions
  , FileExt(..)
  , (<.>)
  , (-<.>)
  , splitExtension
  , splitExtensions
  , takeExtension
  , takeExtensions
  , takeBaseName
  , stripExtension
  , isExtensionOf

    -- ** Trailing slash functions
  , hasTrailingPathSeparator
  , addTrailingPathSeparator
  , dropTrailingPathSeparator

    -- * Unrooted paths
  , Unrooted
  , (</>)
  , unrootPath
  , toUnrootedFilePath
  , fromUnrootedFilePath
  , fragment
  , fragments
  , joinFragments
  , splitFragments
  , normalise
--  , isPathPrefixOf

    -- * File-system paths
  , FsRoot(..)
  , FsUniqueRoot (..)
  , FsPath(..)
  , CWD
  , Relative
  , Absolute
  , HomeDir

    -- ** XDG roots
  , XdgData
  , XdgConfig
  , XdgCache

    -- ** Conversions
  , toFilePath
  , fromFilePath
  , fromAbsoluteFilePath
  , MakeAbsolute (..)
{-
    -- * Wrappers around Codec.Archive.Tar
  , Tar
  , tarIndexLookup
  , tarAppend
    -- * Wrappers around Network.URI
  , Web
  , toURIPath
  , fromURIPath
  , uriPath
  , modifyUriPath
-}
  ) where

import           System.Path.Internal
