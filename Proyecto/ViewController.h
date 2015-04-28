//
//  ViewController.h
//  Proyecto
//
//  Created by Daniel Rodriguez on 3/28/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSInteger dificultad;
@property NSInteger tema;

@property (weak, nonatomic) IBOutlet UILabel *lblDificultad;
@property (weak, nonatomic) IBOutlet UILabel *lblTema;

- (IBAction)Play:(id)sender;
- (IBAction)HighScores:(id)sender;
- (IBAction)HowToPlay:(id)sender;
- (IBAction)Difficulty:(id)sender;
- (IBAction)Topic:(id)sender;

@end

