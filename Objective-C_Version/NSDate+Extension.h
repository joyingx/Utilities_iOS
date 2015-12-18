//
//  NSDate+Extension.h
//
//  Created by Joyingx on 15/5/28.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import <Foundation/Foundation.h>

static const NSTimeInterval kSecondsPerMinute = 60.0;
static const NSTimeInterval kMinutesPerHour   = 60.0;
static const NSTimeInterval kHoursPerDay      = 24.0;
static const NSTimeInterval kDaysPerWeek      = 7.0;
static const NSTimeInterval kSecondsPerHour   = kMinutesPerHour * kSecondsPerMinute;
static const NSTimeInterval kSecondsPerDay    = kHoursPerDay * kSecondsPerHour;
static const NSTimeInterval kSecondsPerWeek   = kDaysPerWeek * kSecondsPerDay;
static const NSTimeInterval kHoursPerWeek     = kDaysPerWeek * kHoursPerDay;

@interface NSDate (Extension)

@property (nonatomic, readonly) NSInteger year;
@property (nonatomic, readonly) NSInteger month;
@property (nonatomic, readonly) NSInteger day;
@property (nonatomic, readonly) NSInteger hour;
@property (nonatomic, readonly) NSInteger minute;
@property (nonatomic, readonly) NSInteger second;
@property (nonatomic, readonly) NSInteger nanosecond;
@property (nonatomic, readonly) NSInteger weekday;  // 一周的第n天，从星期天算起
@property (nonatomic, readonly) NSInteger weekdayOrdinal;  // 该月第n次出现该星期数
@property (nonatomic, readonly) NSInteger weekOfMonth;
@property (nonatomic, readonly) NSInteger weekOfYear;

@property (nonatomic, readonly) BOOL isLeapYear;
@property (nonatomic, readonly) BOOL isToday;
@property (nonatomic, readonly) BOOL isYesterday;
@property (nonatomic, readonly) BOOL isTomorrow;
@property (nonatomic, readonly) BOOL isThisWeek;
@property (nonatomic, readonly) BOOL isThisMonth;
@property (nonatomic, readonly) BOOL isThisYear;

- (BOOL)isSameWeekAsDate:(NSDate *)date;
- (BOOL)isSameMonthAsDate:(NSDate *)date;
- (BOOL)isSameYearAsDate:(NSDate *)date;

- (NSDate *)dateByAddingYears:(NSInteger)years;
- (NSDate *)dateByAddingMonths:(NSInteger)months;
- (NSDate *)dateByAddingWeeks:(NSInteger)weeks;
- (NSDate *)dateByAddingDays:(NSInteger)days;
- (NSDate *)dateByAddingHours:(NSInteger)hours;
- (NSDate *)dateByAddingMinutes:(NSInteger)minutes;
- (NSDate *)dateByAddingSeconds:(NSInteger)seconds;

- (NSString *)stringWithFormat:(NSString *)format;

+ (NSDate *)dateWithString:(NSString *)dateString format:(NSString *)format;
+ (NSDate *)dateWithString:(NSString *)dateString
                    format:(NSString *)format
                  timeZone:(NSTimeZone *)timeZone
                    locale:(NSLocale *)locale;

@end
