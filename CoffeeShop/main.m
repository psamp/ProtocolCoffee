//
//  main.m
//  CoffeeShop
//
//  Created by Princess Sampson on 8/23/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"
#import "Barista.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EspressoMachine *machine = [[EspressoMachine alloc] init];
        Barista *kellyannMarie = [[Barista alloc] init];
        
        [machine setDelegate:kellyannMarie];
        
        [machine addBeans];
        [machine addWater];
        [machine heatWater];
        
        [machine makeEspresso];
    }
    return 0;
}
