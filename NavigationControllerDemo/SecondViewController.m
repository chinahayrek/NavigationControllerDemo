//
//  SecondViewController.m
//  NavigationControllerDemo
//
//  Created by liumingbo on 12-12-27.
//  Copyright (c) 2012年 com.chinahayrek. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

//@property (strong, nonatomic) ThirdViewController *thirdViewController;

@end

@implementation SecondViewController

//@synthesize thirdViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//    [self.navigationController setToolbarHidden:YES animated:YES];
/*
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemCamera target:self action:@selector(goThirdView:)];
    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height - toolBar.frame.size.height - 44.0, self.view.frame.size.width, 44.0)];
    
    [toolBar setBarStyle:UIBarStyleDefault];
    
    toolBar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    [toolBar setItems:[NSArray arrayWithObject:addButton]];
    
    [self.view addSubview:toolBar];
*/
    
    //toolbar上加载2个按钮
//    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
//    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemCamera target:self action:@selector(goThirdView:)];//转到第三个视图
/*
    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    UIBarButtonItem *four = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
*/
//    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    [self setToolbarItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, nil]];
//    [self.navigationController.toolbar setItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, nil] animated:YES];
    
}

- (IBAction)goThirdView:(id)sender{
    
    
    ThirdViewController *thirdView = [[ThirdViewController alloc] init];
    
    
        thirdView.title = @"Third View";
    [self.navigationController pushViewController:thirdView animated:YES];
    


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
