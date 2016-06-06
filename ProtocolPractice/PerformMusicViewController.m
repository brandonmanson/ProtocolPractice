//
//  PerformMusicViewController.m
//  ProtocolPractice
//
//  Created by Brandon Manson on 6/6/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "PerformMusicViewController.h"

@interface PerformMusicViewController ()
@property (strong, nonatomic) IBOutlet UILabel *performanceNumberLabel;

@end

@implementation PerformMusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _performanceNumberLabel.text = [NSString stringWithFormat:@"Congrats on performance #%d!\nYou killed it out there.", _musician.numberOfPerformances];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
