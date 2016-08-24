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
    BOOL respondsToMachineWaterBeingHot = [self.delegate respondsToSelector:@selector(expressoMachineWaterHasBecomeHot:)];
    
    if(respondsToMachineWaterBeingHot) {
        [self.delegate expressoMachineWaterHasBecomeHot:self];
    }
    
    if(self.hasBeans && self.waterIsHot) {
        [self.delegate espressoMachineDidFinishMakingEspresso:self];
    }
}

-(void)addWater {
    _hasWater = YES;
}

-(void)heatWater {
    if(_hasWater) {
        _waterIsHot = YES;
    }
}

-(void)addBeans {
    _hasBeans = YES;
}

@end
