//
//  ViewController.h
//  MarcoPollo
//
//  Created by Nate Almeida on 2/15/14.
//  Copyright (c) 2014 Nate Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;

- (IBAction)postItButtonPressed:(id)sender;

@end
