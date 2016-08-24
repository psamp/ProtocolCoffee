//
//  EspressoMachine.m
//  CoffeeShop
//
//  Created by Princess Sampson on 8/23/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine

- (instancetype)init {
    self = [super init];
    if (self) {
        _hasWater = false;
        _hasBeans = false;
        _waterIsHot = false;
        _delegate = nil;
    }
    return self;
}

-(void)makeEspresso {
    
    [self.delegate prepareEspresso:self];
    
    if(self.hasBeans && self.waterIsHot) {
        [self.delegate espressoMachineDidFinishMakingEspresso:self];
    }
}

-(void)addWater {
    NSLog(@"Adding water...");
    self.hasWater = YES;
}

-(void)heatWater {
    if(self.hasWater) {
        NSLog(@"Water is getting hot...");
        self.waterIsHot = YES;
    }
}

-(void)addBeans {
    NSLog(@"Adding beans...");
    self.hasBeans = YES;
}

@end
