//
//  Emoloyee.m
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import "Emoloyee.h"
#import "Asset.h"
//#import "Person.h"

@implementation Emoloyee
- (double)yearsOfEmployee{
    if (self.hireDate){
        NSDate *now = NSDate.date;
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return  secs / 31557600.0;
    }else{
        return  0;
    }
}
- (float)BodyMassIndex{
//    return  19.0;
    float normalBMI = super.bodyMassIndex;
    return normalBMI * 0.9;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"<Employee %d>",self.employeeID ];
}
//21章節
//屬性的存取方法
- (void)setAssets:(NSArray *)a{
    _asstes = [a mutableCopy];
}
- (NSArray *)assets{
    return [_asstes copy];
}
//- (void)addAssets:(Asset *)a{
//    //asset 是否為 nil
//    if (!_asstes){
//        _asstes = [[NSMutableArray alloc]init];
//    }
//    [_asstes addObject:a];
//}
- (void)addAssets:(Asset *)a{
    if (!_asstes){
        _asstes = [[NSMutableArray alloc]init];
    }

    [_asstes addObject:a];
}

-(unsigned int)valueOfAssets{
    unsigned int sum = 0;
    for (Asset *a in _asstes){
        sum += a.resaleValue;
    }
    return sum;
}


@end
