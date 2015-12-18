//
//  SystemPermissionHelper.m
//
//  Created by Joyingx on 15/9/24.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import "SystemPermissionHelper.h"
#import <AVFoundation/AVFoundation.h>
#import <CoreLocation/CoreLocation.h>
#import <AssetsLibrary/AssetsLibrary.h>

@implementation SystemPermissionHelper

+ (SPStatus)currentCameraAuthorizationStatus {
    AVAuthorizationStatus cameraStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    switch (cameraStatus) {
        case AVAuthorizationStatusAuthorized:
            return SPStatusAuthoried;
        case AVAuthorizationStatusNotDetermined:
            return SPStatusNotDeterminded;
        case AVAuthorizationStatusRestricted:
        case AVAuthorizationStatusDenied:
        default:
            return SPStatusDenied;
    }
}

+ (SPStatus)currentMicrophoneAuthorizationStatus {
    AVAuthorizationStatus microphoneStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    switch (microphoneStatus) {
        case AVAuthorizationStatusAuthorized:
            return SPStatusAuthoried;
        case AVAuthorizationStatusNotDetermined:
            return SPStatusNotDeterminded;
        case AVAuthorizationStatusRestricted:
        case AVAuthorizationStatusDenied:
        default:
            return SPStatusDenied;
    }
}

+ (SPStatus)currentLocationAuthorizationStatus {
    CLAuthorizationStatus locationStatus = [CLLocationManager authorizationStatus];
    switch (locationStatus) {
        case kCLAuthorizationStatusAuthorized:
            return SPStatusAuthoried;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            return SPStatusWhenInUse;
        case kCLAuthorizationStatusNotDetermined:
            return SPStatusNotDeterminded;
        case kCLAuthorizationStatusDenied:
        case kCLAuthorizationStatusRestricted:
            return SPStatusDenied;
    }
}

+ (SPStatus)currentPhotoAuthorization {
    ALAuthorizationStatus photoStatus = [ALAssetsLibrary authorizationStatus];
    switch (photoStatus) {
        case ALAuthorizationStatusDenied:
        case ALAuthorizationStatusRestricted:
            return SPStatusDenied;
        case ALAuthorizationStatusAuthorized:
            return SPStatusAuthoried;
        case ALAuthorizationStatusNotDetermined:
            return SPStatusNotDeterminded;
    }
}

+ (void)requestCameraPermission {
    [self requestCameraPermissionWithCompletion:nil];
}

+ (void)requestCameraPermissionWithCompletion:(void(^)(BOOL granted))completion {
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:completion];
}

+ (void)requestMicrophonePermission {
    [self requestMicrophonePermissionWithCompletion:nil];
}

+ (void)requestMicrophonePermissionWithCompletion:(void(^)(BOOL granted))completion {
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:completion];
}

+ (void)requestPhotoPermission {
	
}

@end
