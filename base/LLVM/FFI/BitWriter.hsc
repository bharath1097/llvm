{-# LANGUAGE CPP, ForeignFunctionInterface, EmptyDataDecls #-}

module LLVM.FFI.BitWriter where
import Foreign.C.String(CString)
#if __GLASGOW_HASKELL__ >= 704
import Foreign.C.Types(CInt(..))
#else
import Foreign.C.Types(CInt)
#endif

import LLVM.FFI.Core

foreign import ccall unsafe "LLVMWriteBitcodeToFile" writeBitcodeToFile
    :: ModuleRef -> CString -> IO CInt
foreign import ccall unsafe "LLVMWriteBitcodeToFileHandle" writeBitcodeToFileHandle
    :: ModuleRef -> CInt -> IO CInt
foreign import ccall unsafe "LLVMWriteBitcodeToFD" writeBitcodeToFD
    :: ModuleRef -> CInt -> CInt -> CInt -> IO CInt
