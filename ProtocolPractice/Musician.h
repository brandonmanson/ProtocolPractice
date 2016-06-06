//
//  Musician.h
//  ProtocolPractice
//
//  Created by Brandon Manson on 6/6/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Music.h"
@interface Musician : NSObject <Music>

@property(strong, nonatomic)NSString *name;
@property int numberOfPerformances;
@property BOOL wroteSong;
@property BOOL practicedGuitar;
@property BOOL practicedSinging;

- (BOOL)preparedForPerformance;
- (void)prepareForNextPerformance;

@end
