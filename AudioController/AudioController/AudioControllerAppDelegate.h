//
//  AudioControllerAppDelegate.h
//  AudioController
//
//  Created by Maher Rezeq on 10/11/11.
//  Copyright 2011 __NativeNCreative__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AudioControllerViewController;

@interface AudioControllerAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AudioControllerViewController *viewController;

@end
