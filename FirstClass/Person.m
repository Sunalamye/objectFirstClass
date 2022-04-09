//
//  Person.m
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import "Person.h"

@implementation Person

//-(float)heightInMeters{ return  _heightInMeters;}
//-(void)setHeightInMeters:(float)h{ _heightInMeters = h;}
//
//-(int)weightInKilos{ return  _weightInKilos;}
//-(void)setWeightInKilos:(int)w{ _weightInKilos = w;}

-(float)bodyMassIndex{
    float h = self.heightInMeters;
    return self.weightInKilos/h*h;
}


@end
