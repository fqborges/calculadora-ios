//
//  MainViewController.h
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *visor;
@property (weak, nonatomic) IBOutlet UITextField *valor;
@property (weak, nonatomic) IBOutlet UIView *tecladoExtendido;

- (IBAction)showInfo:(id)sender;
- (IBAction)botaoMais:(id)sender;
- (IBAction)botaoMenos:(id)sender;
- (IBAction)botaoMultiplicar:(id)sender;
- (IBAction)botaoDividir:(id)sender;
- (IBAction)botaoRaizQuadrada:(id)sender;
- (IBAction)botaoTrocaSinal:(id)sender;
- (IBAction)botaoElevaPotencia:(id)sender;

- (void) realizaOperacao: (NSString*) operacao;

- (IBAction)tecladoOk:(id)sender;
- (IBAction)tecladoPonto:(id)sender;

@end
