import Foundation
import HTTP

func identify(device: Device) -> Application {
    return { (connection, request) in
        _ = device.onIdentify.map { $0() }
        return Response(status: .noContent)
    }
}
