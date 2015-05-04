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
@property NSInteger detailNum;
@property NSInteger chosenOne;

//cuales estan en los lugares?

@property NSInteger primeroChosen;
@property NSInteger segundoChosen;
@property NSInteger terceroChosen;
@property NSInteger cuartoChosen;

@property (weak, nonatomic) IBOutlet UIImageView *imagen1;
@property (weak, nonatomic) IBOutlet UIImageView *imagen2;
@property (weak, nonatomic) IBOutlet UIImageView *imagen3;
@property (weak, nonatomic) IBOutlet UIImageView *imagen4;
@property (weak, nonatomic) IBOutlet UIImageView *imagen5;
@property (weak, nonatomic) IBOutlet UIImageView *imagen6;
@property (weak, nonatomic) IBOutlet UITextView *label1;
@property (weak, nonatomic) IBOutlet UIImageView *muestraImagen;

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;



- (IBAction)b1:(id)sender;
- (IBAction)b2:(id)sender;
- (IBAction)b3:(id)sender;
- (IBAction)b4:(id)sender;
- (IBAction)b5:(id)sender;
- (IBAction)b6:(id)sender;

- (IBAction)primero:(id)sender;
- (IBAction)segundo:(id)sender;
- (IBAction)tercero:(id)sender;
- (IBAction)cuarto:(id)sender;


//Valores para hacer desaparecer el boton cuando sea necesario
@property (weak, nonatomic) IBOutlet UIImageView *r4;
@property (weak, nonatomic) IBOutlet UILabel *labelCuartaExtra;

//Para ver si funciona o no
@property BOOL primeroUse;
@property BOOL segundoUse;
@property BOOL terceroUse;
@property BOOL cuartoUse;

@property (weak, nonatomic) IBOutlet UIButton *btnr1;
@property (weak, nonatomic) IBOutlet UIButton *btnr2;
@property (weak, nonatomic) IBOutlet UIButton *btnr3;
@property (weak, nonatomic) IBOutlet UIButton *btnr4;


//Posiciones imagenes

@property NSInteger detailItem1x;
@property NSInteger detailItem2x;
@property NSInteger detailItem3x;
@property NSInteger detailItem4x;
@property NSInteger detailItem5x;
@property NSInteger detailItem6x;
@property NSInteger detailItem1y;
@property NSInteger detailItem2y;
@property NSInteger detailItem3y;
@property NSInteger detailItem4y;
@property NSInteger detailItem5y;
@property NSInteger detailItem6y;

@end
