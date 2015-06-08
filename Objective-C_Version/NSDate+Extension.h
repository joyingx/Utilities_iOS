//
//  NSDate+Extension.h
//  UtilitiesDemo
//
//  Created by joyingx on 15/5/28.
//  Copyright (c) 2015年 joyingx. All rights reserved.
//

#import <Foundation/Foundation.h>

static const NSInteger kSecondsPerMinute = 60;
static const NSInteger kMinutesPerHour   = 60;
static const NSInteger kHoursPerDay      = 24;
static const NSInteger kDaysPerWeek      = 7;
static const NSInteger kSecondsPerHour   = kMinutesPerHour * kSecondsPerMinute;
static const NSInteger kSecondsPerDay    = kHoursPerDay * kSecondsPerHour;
static const NSInteger kSecondsPerWeek   = kDaysPerWeek * kSecondsPerDay;
static const NSInteger kHoursPerWeek     = kDaysPerWeek * kHoursPerDay;

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
