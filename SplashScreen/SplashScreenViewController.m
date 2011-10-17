//
//  SplashScreenViewController.m
//  SplashScreen
//
//  Created by Hristo Papazov on 10/16/11.
//  Copyright (c) 2011 University of Chicago. All rights reserved.
//

#import "SplashScreenViewController.h"

@implementation SplashScreenViewController
@synthesize splashView;

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

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    NSLog(@"In SplashView");
    self.splashView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = splashView; 
    UIImageView *launchView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default.png"]];
    [splashView addSubview:launchView];
    [launchView release]; launchView = nil;
    
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

@end
