//
//  JHHomeViewController.m
//  JHDemo
//
//  Created by eastsoft_mjh on 2022/8/18.
//

#import "JHHomeViewController.h"
#import "JHVideoViewController.h"
@interface JHHomeViewController ()

@end

@implementation JHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [self.view addSubview:btn];
    [btn setTitle:@"button" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)click:(UIButton *)btn {
    JHVideoViewController *videoVC = [[JHVideoViewController alloc] init];
    [self.navigationController pushViewController:videoVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
