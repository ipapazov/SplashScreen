//
//  InfoController.m
//  SplashScreen
//
//  Created by Hristo Papazov on 10/17/11.
//  Copyright (c) 2011 University of Chicago. All rights reserved.
//

#import "InfoController.h"

@implementation InfoController
@synthesize infoView;
@synthesize myLabel;

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView
{
    NSLog(@"In infoView");
    self.infoView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = infoView;
    infoView.backgroundColor = [UIColor grayColor];
    myLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, 400, 320, 60)];
    [myLabel setTextAlignment:UITextAlignmentCenter];
    [myLabel setTextColor:[UIColor blackColor]];
    [myLabel setBackgroundColor:[UIColor grayColor]];
    
    [infoView addSubview: myLabel];
    [myLabel release]; 
    
    NSString * version = [[[NSBundle mainBundle] infoDictionary]objectForKey:@"CFBundleVersion"];
    [myLabel setText:[NSString stringWithFormat:@"Version: %@", version]];
    
    UIButton *close = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    close.frame = CGRectMake(10, 10, 100, 50);
    [close setTitle:[NSString stringWithFormat:@"Close"]forState:UIControlStateNormal];
    [close addTarget:self action:@selector(closeView:) forControlEvents:UIControlEventTouchUpInside];
    [infoView addSubview:close];
    
}

- (void)closeView:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}
/*

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
@end
