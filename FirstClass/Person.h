//
//  Person.h
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;


//{
//    float _heightInMeters;
//    int _weightInKilos;
//}
//
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;

//計算BMI的方法
-(float)bodyMassIndex;


@end

NS_ASSUME_NONNULL_END
