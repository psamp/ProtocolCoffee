//
//  EspressoMachine.h
//  CoffeeShop
//
//  Created by Princess Sampson on 8/23/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol EspressoMachineDelegate;

@interface EspressoMachine : NSObject

@property(nonatomic, readwrite) BOOL hasWater;
@property(nonatomic, readwrite) BOOL hasBeans;
@property(nonatomic, readwrite) BOOL waterIsHot;
@property(nonatomic,readwrite, weak) id<EspressoMachineDelegate> delegate;

- (void)makeEspresso;
- (void)addWater;
- (void)heatWater;
- (void)addBeans;

@end

@protocol EspressoMachineDelegate <NSObject>

- (void)prepareEspresso:(EspressoMachine *)espressoMachine;
- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine;

@optional
- (void)expressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine;

@end
