import UIKit



/**
 A type for wrapper class of `UIWindow.rootViewController`.
 */
protocol RootViewControllerHolderContract {
    /**
     Replace the root UIViewController of UIWindow to the specified one.
     - returns: The replaced UIViewController if exists.
     */
    @discardableResult
    func alter(to rootViewController: UIViewController) -> UIViewController?
}



/**
 A wrapper class to encapsulate a implementation of assigning `UIWindow.rootViewController`.
 You can replace the class to the stub or spy for testing.
 */
class RootViewControllerHolder: RootViewControllerHolderContract {
    private let window: UIWindow


    /**
     Return newly initialized RootViewControllerHolder for the specified UIWindow.
     You can replace the root UIViewController of the window by calling `#alter`
     */
    init(whoHaveViewController window: UIWindow) {
        self.window = window
    }


    @discardableResult
    func alter(to rootViewController: UIViewController) -> UIViewController? {
        let previousRootViewController = self.window.rootViewController

        self.window.rootViewController = rootViewController

        return previousRootViewController
    }
}