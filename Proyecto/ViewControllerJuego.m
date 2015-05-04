//
//  ViewControllerJuego.m
//  Proyecto
//
//  Created by Alumno on 4/30/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewControllerJuego.h"

@interface ViewControllerJuego ()

@end

@implementation ViewControllerJuego

NSMutableArray *anArray;

NSMutableArray *orden;

NSArray *sorted;

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem1 != newDetailItem) {
        _detailItem1 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem2 != newDetailItem) {
        _detailItem2 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem3 != newDetailItem) {
        _detailItem3 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem4 != newDetailItem) {
        _detailItem4 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem5 != newDetailItem && self.detailNum > 1) {
        _detailItem5 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem6 != newDetailItem && self.detailNum > 1) {
        _detailItem6 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem1) {
        
       

        
    }
    if (self.detailItem2) {
        
        
    }
    if (self.detailItem3) {
        
        
    }
    if (self.detailItem4) {
        
        
    }
    if (self.detailItem5) {
        
        
    }
    if (self.detailItem6) {
        
        
    }
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    orden = [[NSMutableArray alloc] init];
    
    anArray = [[NSMutableArray alloc] init];
    
    [anArray addObject:[self.detailItem1 objectForKey:@"Año"]];
    [anArray addObject:[self.detailItem2 objectForKey:@"Año"]];
    [anArray addObject:[self.detailItem3 objectForKey:@"Año"]];
    [anArray addObject:[self.detailItem4 objectForKey:@"Año"]];
    if (self.detailNum > 1)
    {
        [anArray addObject:[self.detailItem5 objectForKey:@"Año"]];
        [anArray addObject:[self.detailItem6 objectForKey:@"Año"]];
    }
    
    [orden addObject:[self.detailItem1 objectForKey:@"Año"]];
    [orden addObject:[self.detailItem2 objectForKey:@"Año"]];
    [orden addObject:[self.detailItem3 objectForKey:@"Año"]];
    [orden addObject:[self.detailItem4 objectForKey:@"Año"]];
    if (self.detailNum > 1)
    {
        [orden addObject:[self.detailItem5 objectForKey:@"Año"]];
        [orden addObject:[self.detailItem6 objectForKey:@"Año"]];
    }
 
    self.puntuacion=0;

    // Do any additional setup after loading the view.
    
    sorted = [anArray sortedArrayUsingSelector:@selector(compare:)];
    
    // to get one of them:
    NSLog (@"The 4th integer is: %@", [sorted objectAtIndex:0]);
    NSLog (@"The 4th integer is: %@", [sorted objectAtIndex:1]);
    NSLog (@"The 4th integer is: %@", [sorted objectAtIndex:2]);
    NSLog (@"The 4th integer is: %@", [sorted objectAtIndex:3]);

    
    
    self.primeroUse = NO;
    self.segundoUse = NO;
    self.terceroUse = NO;
    self.cuartoUse = NO;
    self.quintoUse = YES;
    self.sextoUse = YES;
    
    
    //Item 1
    NSString *stringUrl = [self.detailItem1 objectForKey:@"Foto"];
    NSURL *nsurl = [NSURL URLWithString:stringUrl];
    NSData *data = [[NSData alloc]initWithContentsOfURL: nsurl];
    UIImage *imagen = [UIImage imageWithData: data];
    self.imagen1.image = imagen;
//    self.label1.text = [self.detailItem1 objectForKey:@"Descripcion"];
    self.detailItem1x = self.imagen1.frame.origin.x;
    self.detailItem1y = self.imagen1.frame.origin.y;
    
    
    //Item 2
    stringUrl = [self.detailItem2 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen2.image = imagen;

    self.detailItem2x = self.imagen2.frame.origin.x;
    self.detailItem2y = self.imagen2.frame.origin.y;
    
    //Item 3
    stringUrl = [self.detailItem3 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen3.image = imagen;
 
    self.detailItem3x = self.imagen3.frame.origin.x;
    self.detailItem3y = self.imagen3.frame.origin.y;
    
    //Item 4
    stringUrl = [self.detailItem4 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen4.image = imagen;

    self.detailItem4x = self.imagen4.frame.origin.x;
    self.detailItem4y = self.imagen4.frame.origin.y;
    
    if (self.detailNum > 1)
    {
        self.quintoUse = NO;
        self.sextoUse = NO;
        //Item 5
        stringUrl = [self.detailItem5 objectForKey:@"Foto"];
        nsurl = [NSURL URLWithString:stringUrl];
        data = [[NSData alloc]initWithContentsOfURL: nsurl];
        imagen = [UIImage imageWithData: data];
        self.imagen5.image = imagen;
        //self.label1.text = [self.detailItem5 objectForKey:@"Descripcion"];
        self.detailItem5x = self.imagen5.frame.origin.x;
        self.detailItem5y = self.imagen5.frame.origin.y;
        _btn5.enabled = YES;
        _btnr5.enabled = YES;
        self.imagenquinto.hidden = NO;
        self.lblQuinto.hidden = NO;
    
        //Item 6
        stringUrl = [self.detailItem6 objectForKey:@"Foto"];
        nsurl = [NSURL URLWithString:stringUrl];
        data = [[NSData alloc]initWithContentsOfURL: nsurl];
        imagen = [UIImage imageWithData: data];
        self.imagen6.image = imagen;
        //self.label1.text = [self.detailItem6 objectForKey:@"Descripcion"];
        self.detailItem6x = self.imagen6.frame.origin.x;
        self.detailItem6y = self.imagen6.frame.origin.y;
        _btn6.enabled = YES;
        _btnr6.enabled = YES;
        self.imagensexto.hidden = NO;
        self.lblSexto.hidden = NO;
        
    }


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

- (IBAction)b1:(id)sender {
    self.muestraImagen.image = self.imagen1.image;
    self.label1.text = [self.detailItem1 objectForKey:@"Descripcion"];
    self.chosenOne = 1;
    
    self.btn1.backgroundColor = [UIColor blueColor];
    self.btn2.backgroundColor = [UIColor clearColor];
    self.btn3.backgroundColor = [UIColor clearColor];
    self.btn4.backgroundColor = [UIColor clearColor];
    self.btn5.backgroundColor = [UIColor clearColor];
    self.btn6.backgroundColor = [UIColor clearColor];
    
    
    
}
- (IBAction)b2:(id)sender {
    self.muestraImagen.image = self.imagen2.image;
    self.label1.text = [self.detailItem2 objectForKey:@"Descripcion"];
    self.chosenOne = 2;
    
    self.btn2.backgroundColor = [UIColor blueColor];
    self.btn1.backgroundColor = [UIColor clearColor];
    self.btn3.backgroundColor = [UIColor clearColor];
    self.btn4.backgroundColor = [UIColor clearColor];
    self.btn5.backgroundColor = [UIColor clearColor];
    self.btn6.backgroundColor = [UIColor clearColor];
}

- (IBAction)b3:(id)sender {
    self.muestraImagen.image = self.imagen3.image;
    self.label1.text = [self.detailItem3 objectForKey:@"Descripcion"];
    self.chosenOne = 3;
    
    self.btn3.backgroundColor = [UIColor blueColor];
    self.btn2.backgroundColor = [UIColor clearColor];
    self.btn1.backgroundColor = [UIColor clearColor];
    self.btn4.backgroundColor = [UIColor clearColor];
    self.btn5.backgroundColor = [UIColor clearColor];
    self.btn6.backgroundColor = [UIColor clearColor];
}



- (IBAction)b4:(id)sender {
    self.muestraImagen.image = self.imagen4.image;
    self.label1.text = [self.detailItem4 objectForKey:@"Descripcion"];
    self.chosenOne = 4;
    
    self.btn4.backgroundColor = [UIColor blueColor];
    self.btn2.backgroundColor = [UIColor clearColor];
    self.btn3.backgroundColor = [UIColor clearColor];
    self.btn1.backgroundColor = [UIColor clearColor];
    self.btn5.backgroundColor = [UIColor clearColor];
    self.btn6.backgroundColor = [UIColor clearColor];
}
- (IBAction)b5:(id)sender {
    self.muestraImagen.image = self.imagen5.image;
    self.label1.text = [self.detailItem5 objectForKey:@"Descripcion"];
    self.chosenOne = 5;
    
    self.btn5.backgroundColor = [UIColor blueColor];
    self.btn2.backgroundColor = [UIColor clearColor];
    self.btn3.backgroundColor = [UIColor clearColor];
    self.btn4.backgroundColor = [UIColor clearColor];
    self.btn1.backgroundColor = [UIColor clearColor];
    self.btn6.backgroundColor = [UIColor clearColor];
}

- (IBAction)b6:(id)sender {
    self.muestraImagen.image = self.imagen6.image;
    self.label1.text = [self.detailItem6 objectForKey:@"Descripcion"];
    self.chosenOne = 6;
    
    self.btn6.backgroundColor = [UIColor blueColor];
    self.btn2.backgroundColor = [UIColor clearColor];
    self.btn3.backgroundColor = [UIColor clearColor];
    self.btn4.backgroundColor = [UIColor clearColor];
    self.btn5.backgroundColor = [UIColor clearColor];
    self.btn1.backgroundColor = [UIColor clearColor];
}

-(void) CheckUsed{
    if (self.primeroUse==self.segundoUse==self.terceroUse==self.cuartoUse==self.quintoUse==self.sextoUse==YES)
    {
    self.label1.text=@"";
        self.muestraImagen.image=NULL;
        
    }
    
}

- (IBAction)primero:(id)sender {
    CGRect frame;
    if (!self.primeroUse) {
        self.primeroUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                self.primeroChosen = 1;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:0];
                
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen2.frame = frame;
                self.primeroChosen = 2;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:0];
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen3.frame = frame;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:0];
                self.primeroChosen = 3;
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen4.frame = frame;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:0];
                self.primeroChosen = 4;
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen5.frame = frame;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:0];
                self.primeroChosen = 5;
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 23; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen6.frame = frame;
                [orden removeObjectAtIndex:0];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:0];
                self.primeroChosen = 6;
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
        
        
    }
    else
    {
        self.primeroUse = NO;
        
        switch (self.primeroChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame;   _btn1.enabled = YES;         break;
                
            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
        self.primeroChosen = 0;
        
        
    }
    [self CheckUsed];
    
}

- (IBAction)segundo:(id)sender {
    CGRect frame;
    if (!self.segundoUse) {
        self.segundoUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:1];
                self.segundoChosen = 1;
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen2.frame = frame;
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:1];
                self.segundoChosen = 2;
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen3.frame = frame;
                self.segundoChosen = 3;
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:1];
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen4.frame = frame;
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:1];
                self.segundoChosen = 4;
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:1];
                _imagen5.frame = frame;
                self.segundoChosen = 5;
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 115; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen6.frame = frame;
                [orden removeObjectAtIndex:1];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:1];
                self.segundoChosen = 6;
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
    }
    else
    {
        self.segundoUse = NO;
        
        switch (self.segundoChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame; _btn1.enabled = YES;
           break;
                            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
    self.segundoChosen = 0;
        
    }
    
    [self CheckUsed];
}

- (IBAction)tercero:(id)sender {
    CGRect frame;
    if (!self.terceroUse) {
        self.terceroUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                self.terceroChosen = 1;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:2];
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen2.frame = frame;
                self.terceroChosen = 2;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:2];
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen3.frame = frame;
                self.terceroChosen = 3;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:2];
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen4.frame = frame;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:2];
                self.terceroChosen = 4;
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen5.frame = frame;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:2];
                self.terceroChosen = 5;
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 204; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen6.frame = frame;
                self.terceroChosen = 6;
                [orden removeObjectAtIndex:2];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:2];
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
    }
    else
    {
        self.terceroUse = NO;
        switch (self.terceroChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame; _btn1.enabled = YES;
                break;
            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
        self.terceroChosen = 0;
        
    }
    
    [self CheckUsed];
}

- (IBAction)cuarto:(id)sender {
    CGRect frame;
    if (!self.cuartoUse) {
        self.cuartoUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:3];
                self.cuartoChosen = 1;
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen2.frame = frame;
                self.cuartoChosen = 2;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:3];
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen3.frame = frame;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:3];
                self.cuartoChosen = 3;
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen4.frame = frame;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:3];
                self.cuartoChosen = 4;
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen5.frame = frame;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:3];
                self.cuartoChosen = 5;
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 296; // new x coordinate
                frame.origin.y = 349; // new y coordinate
                _imagen6.frame = frame;
                self.cuartoChosen = 6;
                [orden removeObjectAtIndex:3];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:3];
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
    }
    else
    {
        self.cuartoUse = NO;
        
        switch (self.cuartoChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame; _btn1.enabled = YES;
                break;
            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
        
        self.cuartoChosen = 0;
        
    }
    [self CheckUsed];
    
}

- (IBAction)quinto:(id)sender {
    CGRect frame;
    if (!self.quintoUse) {
        self.quintoUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                self.quintoChosen = 1;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:4];
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen2.frame = frame;
                self.quintoChosen = 2;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:4];
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen3.frame = frame;
                self.quintoChosen = 3;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:4];
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen4.frame = frame;
                self.quintoChosen = 4;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:4];
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen5.frame = frame;
                self.quintoChosen = 5;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:4];
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 26; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen6.frame = frame;
                [orden removeObjectAtIndex:4];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:4];
                self.quintoChosen = 6;
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
    }
    else
    {
        self.quintoUse = NO;
      
        switch (self.quintoChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame; _btn1.enabled = YES;
                break;
            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
          self.quintoChosen = 0;
        
    }
    
    [self CheckUsed];
}

- (IBAction)sexto:(id)sender {
    CGRect frame;
    if (!self.sextoUse) {
        self.sextoUse = YES;
        switch (self.chosenOne) {
            case 1:
                self.btn1.backgroundColor = [UIColor clearColor];
                frame = _imagen1.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen1.frame = frame;
                _btn1.enabled = NO;
                self.sextoChosen = 1;
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem1 objectForKey:@"Año"] atIndex:5];
                break;
                
            case 2:
                self.btn2.backgroundColor = [UIColor clearColor];
                frame = _imagen2.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen2.frame = frame;
                self.sextoChosen = 2;
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem2 objectForKey:@"Año"] atIndex:5];
                _btn2.enabled = NO;break;
            case 3:
                self.btn3.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen3.frame = frame;
                self.sextoChosen = 3;
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem3 objectForKey:@"Año"] atIndex:5];
                _btn3.enabled = NO;break;
            case 4:
                self.btn4.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen4.frame = frame;
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem4 objectForKey:@"Año"] atIndex:5];
                self.sextoChosen = 4;
                _btn4.enabled = NO;break;
            case 5:
                self.btn5.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                _imagen5.frame = frame;
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem5 objectForKey:@"Año"] atIndex:5];
                self.sextoChosen = 5;
                _btn5.enabled = NO;break;
            case 6:
                self.btn6.backgroundColor = [UIColor clearColor];
                frame = _imagen3.frame;
                frame.origin.x = 293; // new x coordinate
                frame.origin.y = 470; // new y coordinate
                [orden removeObjectAtIndex:5];
                [orden insertObject:[self.detailItem6 objectForKey:@"Año"] atIndex:5];
                _imagen6.frame = frame;
                self.sextoChosen = 6;
                _btn6.enabled = NO;break;
                
            default:
                break;
        }
        self.chosenOne = 0;
    }
    else
    {
        self.sextoUse = NO;
       
        switch (self.sextoChosen) {
            case 1:
                frame = _imagen1.frame;
                frame.origin.x = self.detailItem1x; // new x coordinate
                frame.origin.y = self.detailItem1y; // new y coordinate
                _imagen1.frame = frame; _btn1.enabled = YES;
                break;
            case 2:
                frame = _imagen2.frame;
                frame.origin.x = self.detailItem2x; // new x coordinate
                frame.origin.y = self.detailItem2y; // new y coordinate
                _imagen2.frame = frame;
                _btn2.enabled = YES;break;
            case 3:
                frame = _imagen3.frame;
                frame.origin.x = self.detailItem3x; // new x coordinate
                frame.origin.y = self.detailItem3y; // new y coordinate
                _imagen3.frame = frame;
                _btn3.enabled = YES;break;
            case 4:
                frame = _imagen4.frame;
                frame.origin.x = self.detailItem4x; // new x coordinate
                frame.origin.y = self.detailItem4y; // new y coordinate
                _imagen4.frame = frame;
                _btn4.enabled = YES;break;
            case 5:
                frame = _imagen5.frame;
                frame.origin.x = self.detailItem5x; // new x coordinate
                frame.origin.y = self.detailItem5y; // new y coordinate
                _imagen5.frame = frame;
                _btn5.enabled = YES;break;
            case 6:
                frame = _imagen6.frame;
                frame.origin.x = self.detailItem6x; // new x coordinate
                frame.origin.y = self.detailItem6y; // new y coordinate
                _imagen6.frame = frame;
                _btn6.enabled = YES;break;
                
            default:
                break;
        }
         self.primeroChosen = 0;
        
        [self CheckUsed];
        
    }
    
    
}

- (IBAction)Check:(id)sender {
    bool checker = YES;
    int i = 0;
    int limit = 4;
    bool ready = NO;
    if (self.detailNum > 1)
    {
        if (self.primeroUse && self.segundoUse && self.terceroUse && self.cuartoUse && self.quintoUse && self.sextoUse) {
            ready = YES;
        }
        
    }
    else{
        if (self.primeroUse && self.segundoUse && self.terceroUse && self.cuartoUse) {
            ready = YES;
        }
    }
    
    if (self.detailNum > 1)  limit = 6;
    
    if (ready)
    while (checker && i < limit) {
        if ([orden objectAtIndex:i] != [sorted objectAtIndex:i]) {
            checker = NO;
        }
        i++;
    }
    
    if (checker) {
        NSLog (@"The 4th integer is");
    }
    else
         NSLog (@"Tsada");
    
}
@end
