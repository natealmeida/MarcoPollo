//
//  ViewController.m
//  MarcoPollo
//
//  Created by Nate Almeida on 2/15/14.
//  Copyright (c) 2014 Nate Almeida. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postItButtonPressed:(id)sender {
    NSLog(@"Post it button was pressed: %@", self.tweetTextView.text);
    NSString *tweetText = [NSString stringWithFormat:@"%@ #MarcoPollo", self.tweetTextView.text];
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:tweetText];
    [self presentViewController:composer animated:YES completion:nil];
}
@end
