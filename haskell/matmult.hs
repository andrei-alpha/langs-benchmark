{-# LANGUAGE ScopedTypeVariables, BangPatterns #-}

module Main (main) where

import           Control.Monad
import           Data.Vector ((!), Vector)
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as U
import qualified Data.Vector.Unboxed.Mutable as UM
import           Data.Vector.Mutable (STVector, new, read, unsafeWrite, write)
import qualified Data.Vector.Mutable as VM

_SIZE :: Int
_SIZE = 512

a, c :: Vector (U.Vector Int)

a = V.replicate _SIZE (U.replicate _SIZE 1)

-- This version does not have the cache-aware i-k-j loop and is 20 times slower.
-- c = V.generate _SIZE $ \i ->
--       U.generate _SIZE $ \j ->
--         sum [ a!i!.k * a!k!.j | k <- [0.._SIZE-1] ]

-- Cache aware i-k-j loop in the ST monad.
c = V.create $ do
      -- Initialize result vector with 0
      v :: STVector s (UM.STVector s Int) <- new _SIZE
      forM_ [0.._SIZE-1] $ \i -> do
        w <- UM.replicate _SIZE 0
        write v i w

      -- Fill result vector
      loop _SIZE $ \i -> do
        y <- VM.read v i
        loop _SIZE $ \k -> do
          loop _SIZE $ \j -> do
            x <- UM.unsafeRead y j
            UM.unsafeWrite y j $! x + (a!i!.j) * (a!k!.j)

      -- Freeze inner vectors
      r <- new _SIZE
      loop _SIZE $ \i -> do
        y <- VM.read v i
        w <- U.unsafeFreeze y
        write r i w

      return r


(!.) :: (U.Unbox a) => U.Vector a -> Int -> a
(!.) = U.unsafeIndex
{-# INLINE (!.) #-}


loop :: (Monad m) => Int -> (Int -> m ()) -> m ()
loop bex f = go 0
  where
    go !n | n == bex  = return ()
          | otherwise = f n >> go (n+1)
{-# INLINE loop #-}


res = V.sum (V.map U.sum c)

main = print res
