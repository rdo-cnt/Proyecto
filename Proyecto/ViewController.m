//
//  ViewController.m
//  Proyecto
//
//  Created by Daniel Rodriguez on 3/28/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDificultad.h"
#import "ViewControllerTema.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *lista;
@property (nonatomic,strong) NSArray *lista2;
@property (nonatomic,strong) NSArray *listatemas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.dificultad = 0;
    self.tema = 1;
    self.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];
    self.lblTema.text = [NSString stringWithFormat:@"%li", (long)self.tema];
    
    NSString *pathPlist = [[NSBundle mainBundle]pathForResource:@"Property List" ofType:@"plist"];
    
    self.lista = [[NSArray alloc] initWithObjects:@"Asuntos Internacionales",@"Política mexicana",@"Presidencias", nil];
    
    self.lista = [[NSArray alloc]initWithContentsOfFile:pathPlist];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindShowDificultad:(UIStoryboardSegue *)segue
{
    self.lblDificultad.text = [NSString stringWithFormat:@"%li", (long)self.dificultad];

}

- (IBAction)unwindShowTema:(UIStoryboardSegue *)segue
{
    self.lblTema.text = [NSString stringWithFormat:@"%li", (long)self.tema];
    
}

- (IBAction)Play:(id)sender {
}

- (IBAction)HighScores:(id)sender {
}

- (IBAction)HowToPlay:(UIButton *)sender {
}

- (IBAction)Difficulty:(id)sender {
}

- (IBAction)Topic:(id)sender {
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"ShowDificultad"])
    {
        ViewControllerDificultad *viewDif = [segue destinationViewController];
        
        viewDif.dificultad = self.dificultad;

    }
    else
    {
        if ([[segue identifier] isEqualToString: @"ShowTema"])
        {
            ViewControllerTema *viewTema = [segue destinationViewController];
            
            viewTema.tema = self.tema;
            
        }
        else
        {
           /* NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            NSDate *object = self.lista[indexPath.row];
            [[segue destinationViewController] setDetailItem:object];
        */
        }
        
    }
}

@end
