//
//  SearchVC.h
//  taobaoDemo
//
//  Created by MAC on 14-1-7.
//
//

#import <UIKit/UIKit.h>
#import "taobaoDemoAppDelegate.h"
@interface SearchVC : UIViewController<UISearchBarDelegate,UIScrollViewDelegate>

@property (retain, nonatomic) IBOutlet UISearchBar *search;

@end
