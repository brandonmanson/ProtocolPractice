//
//  MusicPrepViewController.h
//  ProtocolPractice
//
//  Created by Brandon Manson on 6/6/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Musician.h"
#import "PerformMusicViewController.h"

@interface MusicPrepViewController : UIViewController

@property(strong, nonatomic)Musician *musician;

- (void)setupUI;

@end
