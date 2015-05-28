//
//  NSDate+Extension.m
//  UtilitiesDemo
//
//  Created by joyingx on 15/5/28.
//  Copyright (c) 2015年 joyingx. All rights reserved.
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
    NSTimeInterval secondsPerDay = 24 * 60 * 60 * days;
    return [NSDate dateWithTimeInterval:secondsPerDay sinceDate:self];
}

- (NSDate *)dateByAddingHours:(NSInteger)hours {
    NSTimeInterval secondsPerHour = 60 * 60 * hours;
    return [NSDate dateWithTimeInterval:secondsPerHour sinceDate:self];
}

- (NSDate *)dateByAddingMinutes:(NSInteger)minutes {
    NSTimeInterval secondsPerMinutes = 60 * minutes;
    return [NSDate dateWithTimeInterval:secondsPerMinutes sinceDate:self];
}

- (NSDate *)dateByAddingSeconds:(NSInteger)seconds {
    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
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
