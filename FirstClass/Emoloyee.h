//
//  Emoloyee.h
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;
NS_ASSUME_NONNULL_BEGIN

@interface Emoloyee : Person

{
    NSMutableArray *_asstes;
}




@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployee;

//21章節
@property (nonatomic)NSString *lastName;
@property (nonatomic)Person *spouse;
@property (nonatomic)NSMutableArray *children;

@property (nonatomic,copy)NSArray *assets;

- (void)addAssets:(Asset *)e;
- (unsigned int)valueOfAssets;
//22章節


@end

NS_ASSUME_NONNULL_END
