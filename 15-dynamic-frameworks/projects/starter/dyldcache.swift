import YayPrivateFramework
import Foundation

var uuid = UUID().uuid
withUnsafeBytesOf(of: &uuid) { pointer in
  
  _dyld_get_shared_cache_uuid(pointer.baseAddress)
}


print("\(uuid)")
