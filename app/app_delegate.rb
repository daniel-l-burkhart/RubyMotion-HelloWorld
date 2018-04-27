class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
=begin     rootViewController = UIViewController.alloc.init
    rootViewController.title = 'HelloWorld'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
=end

@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
@window.rootViewController = ButtonController.alloc.init
@window.rootViewController.wantsFullScreenLayout = true
@window.makeKeyAndVisible
    true
  end
end
