//
//  SystemPermissionHelper.h
//
//  Created by Joyingx on 15/9/24.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SPStatus) {
    SPStatusDenied,
    SPStatusAuthoried,
    SPStatusWhenInUse,
    SPStatusNotDeterminded,
};

@interface SystemPermissionHelper : NSObject

+ (SPStatus)currentCameraAuthorizationStatus;
+ (SPStatus)currentMicrophoneAuthorizationStatus;
+ (SPStatus)currentLocationAuthorizationStatus;
+ (SPStatus)currentPhotoAuthorization;

+ (void)requestCameraPermission;
+ (void)requestCameraPermissionWithCompletion:(void(^)(BOOL granted))completion;
+ (void)requestMicrophonePermission;

@end
