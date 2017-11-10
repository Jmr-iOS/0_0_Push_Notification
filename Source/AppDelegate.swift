/************************************************************************************************************************************/
/** @file		AppDelegate.swift
 *  @project    0_0 - Empty Template (Swift)
 * 	@brief		x
 * 	@details	x
 *
 * 	@author		Justin Reina, Firmware Engineer, Jaostech
 * 	@created	11/12/15
 * 	@last rev	x
 *
 *
 * 	@notes		x
 *
 * 	@section	Opens
 * 			none current
 *
 * 	@section	Legal Disclaimer
 * 			All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 * 			Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?;


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds);
        
        self.window?.backgroundColor = UIColor.whiteColor();
        
        let viewController:ViewController = ViewController();
        
        viewController.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.window?.rootViewController = viewController;
        
        self.window?.makeKeyAndVisible();

        
        // Push Notification Enable - Override point for customization after application launch.
        application.registerForRemoteNotifications();
        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: .Alert, categories: nil));
        self.registerForPushNotifications(UIApplication.sharedApplication());
        
        print("AppDelegate.application():          Application launch complete");
        
        return true;
    }

    func applicationWillResignActive(application: UIApplication)    { return; }
    func applicationDidEnterBackground(application: UIApplication)  { return; }
    func applicationWillEnterForeground(application: UIApplication) { return; }
    func applicationDidBecomeActive(application: UIApplication)     { return; }
    func applicationWillTerminate(application: UIApplication)       { return; }

//Push Notification Stuff
    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        print(error);
        return;
    }
    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        print(deviceToken);
        return;
    }
    
    func application(application: UIApplication, didReceiveRemoteNotificationuserInfo: [NSObject : AnyObject]) {
        //print(userInfo);
        return;
    }
    
    func registerForPushNotifications(application: UIApplication) {
        let notificationSettings = UIUserNotificationSettings(forTypes: [.Badge, .Sound, .Alert], categories: nil);
        
        application.registerUserNotificationSettings(notificationSettings);
        
        return;
    }
}

