// The Swift Programming Language
// https://docs.swift.org/swift-book
import someComponent
import anotherComponent

public struct EtisalatMonoRepo {
    public init() {
        
    }
    public func showMessage() -> String {
       return someComponent().text + " " + anotherComponent().text
    }
}
