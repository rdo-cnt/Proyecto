//
//  ViewControllerTema.m
//  Proyecto
//
//  Created by Alumno on 4/16/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewControllerTema.h"
#import "ViewController.h"

@interface ViewControllerTema ()

@end

@implementation ViewControllerTema

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *viewIni = [segue destinationViewController];
    
    viewIni.tema = self.tema;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tema1:(id)sender {
    self.tema = 1;
    self.lblTema.text = [NSString stringWithFormat:@"%li", (long)self.tema];
}

- (IBAction)tema2:(id)sender {
    self.tema = 2;
    self.lblTema.text = [NSString stringWithFormat:@"%li", (long)self.tema];
}

- (IBAction)tema3:(id)sender {
    self.tema = 3;
    self.lblTema.text = [NSString stringWithFormat:@"%li", (long)self.tema];
}
@end
