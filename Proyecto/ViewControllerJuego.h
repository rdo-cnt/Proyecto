//
//  ViewControllerJuego.h
//  Proyecto
//
//  Created by Alumno on 4/30/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerJuego : UIViewController

@property (strong, nonatomic) id detailItem1;
@property (strong, nonatomic) id detailItem2;
@property (strong, nonatomic) id detailItem3;
@property (strong, nonatomic) id detailItem4;
@property (strong, nonatomic) id detailItem5;
@property (strong, nonatomic) id detailItem6;
@property int detailNum;
@property (weak, nonatomic) IBOutlet UIImageView *imagen1;
@property (weak, nonatomic) IBOutlet UIImageView *imagen2;
@property (weak, nonatomic) IBOutlet UIImageView *imagen3;
@property (weak, nonatomic) IBOutlet UIImageView *imagen4;
@property (weak, nonatomic) IBOutlet UIImageView *imagen5;
@property (weak, nonatomic) IBOutlet UIImageView *imagen6;
@property (weak, nonatomic) IBOutlet UITextView *label1;
@property (weak, nonatomic) IBOutlet UIImageView *muestraImagen;

- (IBAction)b1:(id)sender;
- (IBAction)b2:(id)sender;
- (IBAction)b3:(id)sender;
- (IBAction)b4:(id)sender;
- (IBAction)b5:(id)sender;
- (IBAction)b6:(id)sender;


@end
