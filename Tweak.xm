
#import "WLNextViewController.h"

%hook WLNextViewController

- (void)viewDidLoad {
   %orig;
    
    CGFloat x = 50.0f;
    CGFloat y = 100.0f;
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, self.view.frame.size.width-x*2, 50)];
    
    [self.view addSubview:btn];
    
    [btn setTitle:@"back" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnDidClicked) forControlEvents:UIControlEventTouchUpInside];


}
%new
- (void)btnDidClicked {
     [self dismissViewControllerAnimated:YES completion:nil];
}


%end

