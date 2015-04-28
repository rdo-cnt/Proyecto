//
//  ViewControllerTema.h
//  Proyecto
//
//  Created by Alumno on 4/16/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerTema : UIViewController

@property NSInteger tema;
@property (weak, nonatomic) IBOutlet UIButton *btnRegresar;
@property (weak, nonatomic) IBOutlet UILabel *lblTema;

- (IBAction)tema1:(id)sender;
- (IBAction)tema2:(id)sender;
- (IBAction)tema3:(id)sender;



@end
