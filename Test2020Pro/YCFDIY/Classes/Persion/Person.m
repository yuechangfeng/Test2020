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
    
    [self NewJn1];
}

- (void)testVersion {
    NSString *strVersion = @"\n\n版本更新 version == 0.1.0\n";
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.2.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.3.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.4.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.5.0\n"];
    
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.6.0\n"];
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.7.0\n"];
    
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.8.0\n"];
    
    strVersion = [NSString stringWithFormat:@"%@\n%@", strVersion, @"版本更新 version == 0.9.0\n"];
    
    NSLog(@"%@", strVersion);
}

- (void)NewJn1 {
    NSLog(@" 新技能");
    
    NSLog(@" version == 0.7.0 之后的 - 新技能");
    NSLog(@" version == 0.8.0 之后的 - 新技能");
    
    NSLog(@" version == 0.9.0 之后的 - 新技能");
}

@end
