//
//  NSDate+Extension.m
//
//  Created by Joyingx on 15/5/28.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

- (NSInteger)year {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:self] year];
}

- (NSInteger)month {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitMonth fromDate:self] month];
}

- (NSInteger)day {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:self] day];
}

- (NSInteger)hour {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitHour fromDate:self] hour];
}

- (NSInteger)minute {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitMinute fromDate:self] minute];
}

- (NSInteger)second {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitSecond fromDate:self] second];
}

- (NSInteger)nanosecond {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitNanosecond fromDate:self] nanosecond];
}

- (NSInteger)weekday {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekday fromDate:self] weekday];
}

- (NSInteger)weekdayOrdinal {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekdayOrdinal fromDate:self] weekdayOrdinal];
}

- (NSInteger)weekOfMonth {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekOfMonth fromDate:self] weekOfMonth];
}

- (NSInteger)weekOfYear {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekOfYear fromDate:self] weekOfYear];
}


- (BOOL)isLeapYear {
    NSInteger year = self.year;
    if ((year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0))) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isToday {
    NSDate *now = [NSDate date];
    if (now.year == self.year && now.month == self.month && now.day == self.day) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isYesterday {
    NSDate *yesterday = [[NSDate date] dateByAddingDays:-1];
    if (yesterday.year == self.year && yesterday.month == self.month && yesterday.day == self.day) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isTomorrow {
    NSDate *tomorrow = [[NSDate date] dateByAddingDays:1];
    if (tomorrow.year == self.year && tomorrow.month == self.month && tomorrow.day == self.day) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isThisWeek {
    NSDate *now = [NSDate date];
    if (self.year == now.year && self.weekOfYear == now.weekOfYear) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isThisMonth {
    NSDate *now = [NSDate date];
    if (self.year == now.year && self.month == now.month) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isThisYear {
    NSDate *now = [NSDate date];
    if (self.year == now.year) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isSameWeekAsDate:(NSDate *)date {
    if (self.year == date.year && self.weekOfYear == date.weekOfYear) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isSameMonthAsDate:(NSDate *)date {
    if (self.year == date.year && self.month == date.month) {
        return YES;
    }
    
    return NO;
}

- (BOOL)isSameYearAsDate:(NSDate *)date {
    if (self.year == date.year) {
        return YES;
    }
    
    return NO;
}

- (NSDate *)dateByAddingYears:(NSInteger)years {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setYear:years];
    return [currentCalendar dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingMonths:(NSInteger)months {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setMonth:months];
    return [currentCalendar dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingWeeks:(NSInteger)weeks; {
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setWeekOfYear:weeks];
    return [currentCalendar dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingDays:(NSInteger)days {
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setDay:days];
    return [[NSCalendar currentCalendar] dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingHours:(NSInteger)hours {
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setHour:hours];
    return [[NSCalendar currentCalendar] dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingMinutes:(NSInteger)minutes {
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setMinute:minutes];
    return [[NSCalendar currentCalendar] dateByAddingComponents:componets toDate:self options:0];
}

- (NSDate *)dateByAddingSeconds:(NSInteger)seconds {
    NSDateComponents *componets = [[NSDateComponents alloc] init];
    [componets setSecond:seconds];
    return [[NSCalendar currentCalendar] dateByAddingComponents:componets toDate:self options:0];
}


- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setLocale:[NSLocale currentLocale]];
    return [formatter stringFromDate:self];
}


+ (NSDate *)dateWithString:(NSString *)dateString format:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setLocale:[NSLocale currentLocale]];
    return [formatter dateFromString:dateString];
}

+ (NSDate *)dateWithString:(NSString *)dateString
                    format:(NSString *)format
                  timeZone:(NSTimeZone *)timeZone
                    locale:(NSLocale *)locale {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:dateString];
    
    if (timeZone) {
        [formatter setTimeZone:timeZone];
    }
    
    if (locale) {
        [formatter setLocale:locale];
    }
    
    return [formatter dateFromString:dateString];
}

@end
