//
//  SearchVC.m
//  taobaoDemo
//
//  Created by MAC on 14-1-7.
//
//

#import "SearchVC.h"
#import "TestViewController.h"
@interface SearchVC ()

@end

@implementation SearchVC

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
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]   initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    [tap release];
}

-(void)dismissKeyboard {
    [self.search resignFirstResponder];
}


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    
    taobaoDemoAppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    myDelegate.testsch = searchBar.text;
    NSLog( @"%s,%d" , __FUNCTION__ , __LINE__ );
    [searchBar resignFirstResponder];
    TestViewController *t = [[TestViewController alloc] init];
    [self.navigationController pushViewController:t animated:true];
    [t release];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_search release];
    [super dealloc];
}
@end
