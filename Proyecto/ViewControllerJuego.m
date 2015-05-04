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
    if (_detailItem5 != newDetailItem && self.detailNum > 4) {
        _detailItem5 = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    if (_detailItem6 != newDetailItem && self.detailNum > 4) {
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
    // Do any additional setup after loading the view.
    
    //Item 1
    NSString *stringUrl = [self.detailItem1 objectForKey:@"Foto"];
    NSURL *nsurl = [NSURL URLWithString:stringUrl];
    NSData *data = [[NSData alloc]initWithContentsOfURL: nsurl];
    UIImage *imagen = [UIImage imageWithData: data];
    self.imagen1.image = imagen;
    self.label1.text = [self.detailItem1 objectForKey:@"Descripcion"];
    
    //Item 2
    stringUrl = [self.detailItem2 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen2.image = imagen;
    self.label1.text = [self.detailItem2 objectForKey:@"Descripcion"];
    
    //Item 3
    stringUrl = [self.detailItem3 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen3.image = imagen;
    self.label1.text = [self.detailItem3 objectForKey:@"Descripcion"];
    
    //Item 4
    stringUrl = [self.detailItem4 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen4.image = imagen;
    self.label1.text = [self.detailItem4 objectForKey:@"Descripcion"];
    
    //Item 5
    stringUrl = [self.detailItem5 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen5.image = imagen;
    self.label1.text = [self.detailItem5 objectForKey:@"Descripcion"];
    
    //Item 6
    stringUrl = [self.detailItem6 objectForKey:@"Foto"];
    nsurl = [NSURL URLWithString:stringUrl];
    data = [[NSData alloc]initWithContentsOfURL: nsurl];
    imagen = [UIImage imageWithData: data];
    self.imagen6.image = imagen;
    self.label1.text = [self.detailItem6 objectForKey:@"Descripcion"];
    

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
    
}
- (IBAction)b2:(id)sender {
    self.muestraImagen.image = self.imagen2.image;
    self.label1.text = [self.detailItem2 objectForKey:@"Descripcion"];
}

- (IBAction)b3:(id)sender {
    self.muestraImagen.image = self.imagen3.image;
    self.label1.text = [self.detailItem3 objectForKey:@"Descripcion"];
}



- (IBAction)b4:(id)sender {
    self.muestraImagen.image = self.imagen4.image;
    self.label1.text = [self.detailItem4 objectForKey:@"Descripcion"];
}
- (IBAction)b5:(id)sender {
    self.muestraImagen.image = self.imagen5.image;
    self.label1.text = [self.detailItem5 objectForKey:@"Descripcion"];
}

- (IBAction)b6:(id)sender {
    self.muestraImagen.image = self.imagen6.image;
    self.label1.text = [self.detailItem6 objectForKey:@"Descripcion"];
}



@end
