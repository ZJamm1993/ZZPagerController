//
//  RootViewController.m
//  
//
//  Created by Macx on 17/7/6.
//
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad]; // Do any additional setup after loading the view.
    self.dataSource=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numbersOfChildControllersInPagerController:(ZZPagerController *)pager
{
    return 3;
}

- (UIViewController *)pagerController:(ZZPagerController *)pager viewControllerAtIndex:(NSInteger)index
{
    if (index==0) {
        UIViewController* vc=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"vc0"];
        return vc;
    }
    else if(index==1)
    {
        UIViewController* vc=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"vc1"];
        return vc;    }
    else if(index==2)
    {
        UIViewController* vc=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"vc2"];
        return vc;    }
    return nil;
}

-(NSString*)pagerController:(ZZPagerController *)pager titleAtIndex:(NSInteger)index
{
    if (index==0) {
        return @"vc00000";
    }
    else if(index==1)
    {
        return @"vc11111";
    }
    else if(index==2)
    {
        return @"vc22222";
    }
    return @"";
}

-(CGRect)pagerController:(ZZPagerController *)pager frameForMenuView:(ZZPagerMenu *)menu
{
    return CGRectMake(0, 0, self.view.frame.size.width, 40);
}

-(CGRect)pagerController:(ZZPagerController *)pager frameForContentView:(UIScrollView *)scrollView
{
    CGRect menuR=[self pagerController:pager frameForMenuView:nil];
    CGFloat menuMy=CGRectGetMaxY(menuR);
    return CGRectMake(0, menuMy, self.view.frame.size.width, self.view.frame.size.height-menuMy);
}

@end
