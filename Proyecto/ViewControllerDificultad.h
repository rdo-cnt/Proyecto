//
//  ViewControllerDificultad.h
//  Proyecto
//
//  Created by Alumno on 4/16/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerDificultad : UIViewController

@property NSInteger dificultad;

@property (weak, nonatomic) IBOutlet UIButton *btnRegresar;
@property (weak, nonatomic) IBOutlet UILabel *lblDificultad;

- (IBAction)facil:(id)sender;
- (IBAction)normal:(id)sender;
- (IBAction)dificil:(id)sender;


@end
