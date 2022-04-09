//
//  main.m
//  FirstClass
//
//  Created by Suoie on 2022/4/9.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "Emoloyee.h"
#import "Asset.h"

void employeeKist(void){
    //創建一個數組，用來包含多個 Employees對象
    NSMutableArray *employees = [[NSMutableArray alloc]init];
    for (int i=0; i<10; i++) {
        //創建  Employee 實例
        Emoloyee *mikes = [[ Emoloyee alloc]init];
        //實例的變量付值
        mikes.weightInKilos = 90 + i;
        mikes.heightInMeters = 1.8 -i / 10.0;
        mikes.employeeID = i;
        //變量加入數組
        [employees addObject:mikes];
    }
    //創建 10 個  Asset 對象
    for (int i=0; i<10; i++) {
        //創建一個  Asset 對象
         Asset *asset = [[ Asset alloc]init];
        //為對象設置合適的標籤
        NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
        asset.label = currentLabel;
        asset.resaleValue = 350 + i * 17;
        //生成 0~9 隨機整數
        NSUInteger randomIndex = random() % [employees count];
        //取出相對應的對象
        Emoloyee *randomEmployee = [employees objectAtIndex:randomIndex];
        //將對象付給  Employee
        NSLog(@"1111%@",randomEmployee);
        [randomEmployee addAssets:asset];
//        [randomEmployee addAsset:asset];
    }
//    NSLog(@"Employee :%@",employees);
//    NSLog(@"Giving up ownership of one employee");
//    [employees removeObjectAtIndex:5];
//    NSLog(@"Giving up ownership of arrays");
//    employees = nil;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        Emoloyee *mikes = [[Emoloyee alloc]init];
        mikes.weightInKilos =  96;
        mikes.heightInMeters = 1.8;
        
        mikes.employeeID = 12;
        mikes.officeAlarmCode = 12345;
        mikes.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];

        float bmi = mikes.bodyMassIndex;
        NSLog(@"%.3f",bmi);
        
        double years = mikes.yearsOfEmployee;
        NSLog(@"%.3f",years);
        
        NSDate *date = mikes.hireDate;
        NSLog(@"%@",date);
        */
        employeeKist();
    }
    return 0;
}
