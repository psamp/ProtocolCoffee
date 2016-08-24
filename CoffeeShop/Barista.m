//
//  Barista.m
//  CoffeeShop
//
//  Created by Princess Sampson on 8/23/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "Barista.h"
#import "EspressoMachine.h"

@implementation Barista

-(void)prepareEspresso:(EspressoMachine *)espressoMachine {
    [espressoMachine addBeans];
    [espressoMachine addWater];
    [espressoMachine heatWater];
}

-(void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine {
    NSLog(@"Here is your espresso! Thank you and have a nice day!");
}

-(void)expressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine {
    
    if(espressoMachine.waterIsHot){
        NSLog(@"The machine's water is hot now!");
    } else {
        NSLog(@"The machine's water is still cold!");
    }
}

@end
