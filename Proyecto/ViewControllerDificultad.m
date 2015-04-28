//
//  ViewControllerDificultad.m
//  Proyecto
//
//  Created by Alumno on 4/16/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewControllerDificultad.h"
#import "ViewController.h"

@interface ViewControllerDificultad ()

@end

@implementation ViewControllerDificultad

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
    

        viewIni.dificultad = self.dificultad;
        viewIni.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];

    
    //no pasa nada si le pico cancelar
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)facil:(id)sender {
    self.dificultad = 0;
     self.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];
    
}

- (IBAction)normal:(id)sender {
    self.dificultad = 1;
     self.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];
}

- (IBAction)dificil:(id)sender {
    self.dificultad = 2;
     self.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];
}
@end
