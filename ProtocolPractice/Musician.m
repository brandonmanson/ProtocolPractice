//
//  Musician.m
//  ProtocolPractice
//
//  Created by Brandon Manson on 6/6/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Musician.h"

@implementation Musician

- (void)practiceGuitar {
    NSLog(@"I only play three chords so I can make eye contact.");
}

- (void)practiceSinging {
    NSLog(@"Using my classical technique, I am a true stylistic chameleon");
}

- (void)writeSong {
    NSLog(@"I perform on weekends but make my living writing songs for bigger artists. It's actually a pretty sweet gig :)");
}

- (void)perform {
    NSLog(@"I'm a true singer/songwriter playing and singing my own tunes.");
    _numberOfPerformances += 1;
}

- (BOOL)preparedForPerformance {
    if (_wroteSong && _practicedGuitar && _practicedSinging) {
        return YES;
    } else {
        return NO;
    }
}

- (void)prepareForNextPerformance {
    _wroteSong = NO;
    _practicedGuitar = NO;
    _practicedSinging = NO;
}

@end
