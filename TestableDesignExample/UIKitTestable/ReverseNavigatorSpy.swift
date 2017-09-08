import UIKit
@testable import TestableDesignExample



/**
 A spy class for ReverseNavigators.
 This class is useful for capturing calls of `UINavigationController#popToViewController` for testing.
 */
class ReverseNavigatorSpy: ReverseNavigatorContract {
    typealias CallArgs = Bool


    /**
     Call arguments list for the method `#back(animated: Bool)`.
     You can use the property to test how the method is called.
     */
    fileprivate(set) var callArgs: [CallArgs] = []


    var stub: ReverseNavigatorContract


    init() {
        self.stub = ReverseNavigatorStub()
    }


    init(inheriting stub: ReverseNavigatorContract) {
        self.stub = stub
    }


    func back(animated: Bool) throws {
        self.callArgs.append(animated)
        try self.stub.back(animated: animated)
    }
}