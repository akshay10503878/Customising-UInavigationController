//
//  ViewController.m
//  CustomNavigationController
//
//  Created by akshay bansal on 10/27/17.
//  Copyright © 2017 akshay bansal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*--Background image of the navigation controller--*/
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    /*--to remove the small line between navigation controllr and main view--*/
    self.navigationController.navigationBar.shadowImage=[[UIImage alloc] init];
    
    
    /*--To change the default text color --*/
    self.navigationController.navigationBar.tintColor=[UIColor whiteColor];
    
    
    /*--To change the title bar of the navigation Controller (view controller specific)--*/
    UILabel *title=[[UILabel alloc] init];
    NSMutableAttributedString *titleString = [[NSMutableAttributedString alloc]initWithString:@"Journey Begins"];
    [titleString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Redressed" size:30] range:NSMakeRange(0, 7)];
    [titleString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Papyrus" size:30] range:NSMakeRange(8, 6)];
    [titleString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, titleString.length)];
    title.attributedText=titleString;
    self.navigationItem.titleView = title;
    
    
    /*--to chnage the back button text (view controller specific)--*/
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    /*--to change the back indigator image--*/
    self.navigationController.navigationBar.backIndicatorImage = [UIImage imageNamed:@"back"];
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back"];
    
    
    /*--hide on slide-*/
    self.navigationController.hidesBarsOnSwipe=true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
