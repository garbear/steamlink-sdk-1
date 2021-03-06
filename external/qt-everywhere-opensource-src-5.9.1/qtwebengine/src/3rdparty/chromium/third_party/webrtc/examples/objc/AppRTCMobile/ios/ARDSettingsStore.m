/*
 *  Copyright 2016 The WebRTC Project Authors. All rights reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#import "ARDSettingsStore.h"

static NSString *const kUserDefaultsMediaConstraintsKey =
    @"rtc_video_resolution_media_constraints_key";

NS_ASSUME_NONNULL_BEGIN
@implementation ARDSettingsStore

- (nullable NSString *)videoResolutionConstraintsSetting {
  return [[NSUserDefaults standardUserDefaults] objectForKey:kUserDefaultsMediaConstraintsKey];
}

- (void)setVideoResolutionConstraintsSetting:(NSString *)constraintsString {
  [[NSUserDefaults standardUserDefaults] setObject:constraintsString
                                            forKey:kUserDefaultsMediaConstraintsKey];
}

@end
NS_ASSUME_NONNULL_END
