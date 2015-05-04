//
//  ViewControllerScores.m
//  Proyecto
//
//  Created by Daniel Rodriguez on 5/3/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ViewControllerScores.h"

@interface ViewControllerScores ()

@property (nonatomic,strong) NSArray *listaScores;

@end

@implementation ViewControllerScores

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *pathPlistScores = [[NSBundle mainBundle]pathForResource:@"HighScores" ofType:@"plist"];
    self.listaScores = [[NSArray alloc]initWithContentsOfFile:pathPlistScores];
    NSObject *object = self.listaScores[0];
    self.detailItem1=object;
    self.Name1.text=[self.detailItem1 objectForKey:@"Name"];
    self.Score1.text=[[self.detailItem1 objectForKey:@"Score"] stringValue];
    
    object = self.listaScores[1];
    self.detailItem2=object;
    self.Name2.text=[self.detailItem2 objectForKey:@"Name"];
    self.Score2.text=[[self.detailItem2 objectForKey:@"Score"] stringValue];
    
    object = self.listaScores[2];
    self.detailItem3=object;
    self.Name3.text=[self.detailItem3 objectForKey:@"Name"];
    self.Score3.text=[[self.detailItem3 objectForKey:@"Score"] stringValue];
    
    object = self.listaScores[3];
    self.detailItem4=object;
    self.Name4.text=[self.detailItem4 objectForKey:@"Name"];
    self.Score4.text=[[self.detailItem4 objectForKey:@"Score"] stringValue];
    
    object = self.listaScores[4];
    self.detailItem5=object;
    self.Name5.text=[self.detailItem5 objectForKey:@"Name"];
    self.Score5.text=[[self.detailItem5 objectForKey:@"Score"] stringValue];
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

@end
