//
//  MyViewController.m
//  SplashScreen
//
//  Created by Hristo Papazov on 10/16/11.
//  Copyright (c) 2011 University of Chicago. All rights reserved.
//

#import "MyViewController.h"
#import "SplashScreenViewController.h"
#import "InfoController.h"
#import "CircleView.h"

@implementation MyViewController
@synthesize mainView;

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
    
    NSLog(@"In loadView");
    self.mainView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = mainView;
    mainView.backgroundColor = [UIColor lightGrayColor];
    
    SplashScreenViewController *sc = [[SplashScreenViewController alloc] init]; 
    sc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self.navigationController presentModalViewController:sc animated:NO];
    [sc release]; sc = nil;
    [self performSelector:@selector(dismissView) withObject:nil afterDelay:2.0];
    
    UIButton *info = [UIButton buttonWithType:UIButtonTypeInfoDark];
    info.frame = CGRectMake(10, 10, 50, 50);
    [info addTarget:self action:@selector(showInfo:) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:info];
    
    /*
    CircleView *circleView = [[CircleView alloc] init];
    [self.view addSubview:circleView];
    [circleView release];
     */
    
}

- (void)showInfo:(id)sender
{
    InfoController *ic = [[InfoController alloc] init];
    [self.navigationController presentModalViewController:ic animated:NO];
    [ic release]; ic = nil;   
}

- (void)dismissView
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
