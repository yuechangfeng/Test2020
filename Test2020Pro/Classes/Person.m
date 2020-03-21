//
//  Person.m
//  Pods-Test2020Pro_Example
//
//  Created by yuecf on 2020/3/20.
//

#import "Person.h"

@implementation Person

- (void)personJn {
    NSLog(@"\n+++++++   version = 0.3.0   +++++++++++\n我能吃饭===== \n我会开车===== \n我还会写作\n");
    
    NSString *strVersion = @"版本更新 version == 0.1.0\n";
    //       strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.2.0\n"];
    //       strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.3.0\n"];
    //       strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.4.0\n"];
    //       strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.5.0\n"];
    
    NSLog(@"%@", strVersion);
}

- (void)testVersion {
    NSString *strVersion = @"版本更新 version == 0.1.0\n";
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.2.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.3.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.4.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.5.0\n"];
    
    
    NSLog(@"版本更新 version == 0.1.0");
}

@end
