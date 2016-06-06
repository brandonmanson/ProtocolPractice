//
//  MusicPrepViewController.m
//  ProtocolPractice
//
//  Created by Brandon Manson on 6/6/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "MusicPrepViewController.h"

@interface MusicPrepViewController ()
@property (strong, nonatomic) IBOutlet UILabel *numberOfPerformancesLabel;
@property (strong, nonatomic) IBOutlet UIButton *writeSongButton;
@property (strong, nonatomic) IBOutlet UIButton *practiceGuitarButton;
@property (strong, nonatomic) IBOutlet UIButton *practiceSingingbutton;
@property (strong, nonatomic) IBOutlet UIButton *performButton;

@end

@implementation MusicPrepViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _musician = [[Musician alloc]init];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI {
    _performButton.alpha = 0.20;
    _performButton.enabled = NO;
    _writeSongButton.enabled = YES;
    _writeSongButton.alpha = 1.0;
    _practiceGuitarButton.enabled = YES;
    _practiceGuitarButton.alpha = 1.0;
    _practiceSingingbutton.enabled = YES;
    _practiceSingingbutton.alpha = 1.0;
    _numberOfPerformancesLabel.text = [NSString stringWithFormat:@"Number Of Performances:\n%d", _musician.numberOfPerformances];
}

- (IBAction)writeSongButtonPressed:(UIButton *)sender {
    _musician.wroteSong = YES;
    _writeSongButton.enabled = NO;
    _writeSongButton.alpha = 0.20;
    NSLog(@"Write song button pressed. Wrote song: %d", _musician.wroteSong);
    if ([_musician preparedForPerformance]) {
        _performButton.alpha = 1.0;
        _performButton.enabled = YES;
    }
}

- (IBAction)practiceGuitarButtonPressed:(UIButton *)sender {
    _musician.practicedGuitar = YES;
    _practiceGuitarButton.enabled = NO;
    _practiceGuitarButton.alpha = 0.20;
    NSLog(@"Practice guitar button pressed. Practiced guitar: %d", _musician.practicedGuitar);
    if ([_musician preparedForPerformance]) {
        _performButton.alpha = 1.0;
        _performButton.enabled = YES;
    }
}

- (IBAction)practiceSingingButtonPressed:(UIButton *)sender {
    _musician.practicedSinging = YES;
    _practiceSingingbutton.enabled = NO;
    _practiceSingingbutton.alpha = 0.20;
    NSLog(@"Practice singing button pressed. Practiced guitar: %d", _musician.practicedSinging);
    if ([_musician preparedForPerformance]) {
        _performButton.alpha = 1.0;
        _performButton.enabled = YES;
    }
}


#pragma mark - Navigation


- (IBAction)unwindForSegue:(UIStoryboardSegue *)unwindSegue {
    PerformMusicViewController *vc = [unwindSegue sourceViewController];
    NSLog(@"Number of performances being passed back: %d", vc.musician.numberOfPerformances);
    _musician.numberOfPerformances = vc.musician.numberOfPerformances;
    [_musician prepareForNextPerformance];
    [self setupUI];
}

- (IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PerformMusicViewController *vc = [segue destinationViewController];
    vc.musician = _musician;
    vc.musician.numberOfPerformances += 1;
    
}


@end
