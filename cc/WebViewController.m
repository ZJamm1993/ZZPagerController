//
//  WebViewController.m
//  cc
//
//  Created by Macx on 17/7/6.
//  Copyright © 2017年 bangju. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
{
    
    __weak IBOutlet UIWebView *webView;
}
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* html=@"<p><img src=\"http://192.168.1.131:8090/data/upload/ueditor/20170628/59536ed380604.jpg\" title=\"ooYBAFHnooGIfFtoABpeeMD8LDIAAAv-QEK2eYAGl6Q411.jpg\" alt=\"ooYBAFHnooGIfFtoABpeeMD8LDIAAAv-QEK2eYAGl6Q411.jpg\" width=\"479\" height=\"318\" style=\"width: 479px; height: 318px;\"/></p><p>sfsdfsdfdsdff\u73a9\u513fe</p><p><br/></p><p><br/></p><p><video class=\"edui-upload-video  vjs-default-skin    video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"http://192.168.1.131:8090/data/upload/ueditor/20170628/5953792e9928e.mp4\" data-setup=\"{}\"><source src=\"http://192.168.1.131:8090/data/upload/ueditor/20170628/5953792e9928e.mp4\" type=\"video/mp4\"/><\video></p>";
    
    [webView loadHTMLString:html baseURL:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
