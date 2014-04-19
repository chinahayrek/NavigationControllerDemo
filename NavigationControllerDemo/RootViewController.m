//
//  RootViewController.m
//  NavigationControllerDemo
//
//  Created by liumingbo on 12-12-27.
//  Copyright (c) 2012年 com.chinahayrek. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

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

/*
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                                                target:self
                                                                                action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;//导航栏上添加左侧按钮
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                 target:self
                                                                                 action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;//导航栏上添加右侧按钮

    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"根视图"
                                                                   style:UIBarButtonItemStyleDone
                                                                  target:self
                                                                  action:nil];
    self.navigationItem.backBarButtonItem = backButton;//导航栏添加返回按钮

//    [self.navigationController setNavigationBarHidden:YES animated:YES];//第一项为YES时，会产生奇妙的效果，navigationbar会自动消失。谨慎使用此行
    
    NSArray *segArray = [[NSArray alloc] initWithObjects:@"aa",@"bb", nil];
    UISegmentedControl *segControl = [[UISegmentedControl alloc]initWithItems:segArray];
    segControl.momentary = YES;
    [segControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    //导航栏添加segmentcontrol
    self.navigationItem.titleView = segControl;

    self.navigationItem.title = @"firstView";

    //toolbar上加载4个按钮
    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    UIBarButtonItem *four = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [self setToolbarItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, three, flexItem, four, flexItem, nil]];
*/
    
//    [self.navigationController setToolbarHidden:NO animated:NO];//显示出toolbar

}

- (void)segmentAction:(id)sender{
    switch ([sender selectedSegmentIndex]) {
        case 0:{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title"
                                                            message:@"you choose aa!"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil, nil];
            
            [alert show];
        }
            break;

            
        case 1:{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title"
                                                            message:@"you choose bb!"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil, nil];
            
            [alert show];
        }
            break;

        default:
            break;
    }
    

}

- (void)selectLeftAction:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title"
                                                    message:@"left button!!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    
    [alert show];
}

- (void)selectRightAction:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title"
                                                    message:@"right button!!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    
    [alert show];
}

-(IBAction) goSecondView:(id)sender{
    SecondViewController *secondView = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secondView animated:YES];
    
    secondView.title = @"Second View";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
