//
//  Asset.m
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import "Asset.h"

@implementation Asset
- (NSString *)description{
    return [NSString stringWithFormat:@"<%@: $%u>",self.label,self.resaleValue];
}

- (void)dealloc{
    NSLog(@"%@",self);
}

@end
