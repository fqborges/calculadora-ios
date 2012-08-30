//
//  MainViewController.m
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import "MainViewController.h"
#import "Calculadora.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize visor;
@synthesize valor;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setVisor:nil];
    [self setValor:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

- (void) realizaOperacao: (NSString*) operacao
{
    float acumulado = [visor.text floatValue];
    float vlr = [valor.text floatValue];
    
    if (vlr != 0)
    {
        // Cria uma calculadora
        Calculadora* calc = [Calculadora new];
                
        if (operacao == @"somar")
        {
            visor.text = [[NSNumber numberWithFloat:[calc somarAcumulado: acumulado  comValor: vlr]] stringValue];
            
        } else if (operacao == @"subtrair")
        {
            visor.text = [[NSNumber numberWithFloat:[calc subtrairAcumulado: acumulado  comValor: vlr]] stringValue];
        }
        else if (operacao == @"multiplicar")
        {
            visor.text = [[NSNumber numberWithFloat:[calc multiplicarAcumulado: acumulado  comValor: vlr]] stringValue];
        }
        else if (operacao == @"dividir")
        {
            visor.text = [[NSNumber numberWithFloat:[calc dividirAcumulado: acumulado  comValor: vlr]] stringValue];
        }
        else if (operacao == @"raizQuadrada")
        {
            visor.text = [[NSNumber numberWithFloat:[calc raizQuadrada: vlr]] stringValue];
        }
        else if (operacao == @"trocaSinal")
        {
            visor.text = [[NSNumber numberWithFloat:[calc trocaSinal: vlr]] stringValue];
        }
        else if (operacao == @"elevaPotencia")
        {
            visor.text = [[NSNumber numberWithFloat:[calc elevaPotenciaAcumulado: acumulado comValor: vlr]] stringValue];
        }
        valor.text=nil;        
    }
    else
    {
        if (acumulado != 0){
            // Cria uma calculadora
            Calculadora* calc = [Calculadora new];

            if (operacao == @"raizQuadrada")
            {
                visor.text = [[NSNumber numberWithFloat:[calc raizQuadrada: acumulado]] stringValue];
            }
            else if (operacao == @"trocaSinal")
            {
                visor.text = [[NSNumber numberWithFloat:[calc trocaSinal: acumulado]] stringValue];
            }
        }
    }
}

- (IBAction)botaoMais:(id)sender{
    [self realizaOperacao: @"somar"];
}

- (IBAction)botaoMenos:(id)sender {
    [self realizaOperacao: @"subtrair"];
}

- (IBAction)botaoMultiplicar:(id)sender {
    [self realizaOperacao: @"multiplicar"];
}

- (IBAction)botaoDividir:(id)sender {
    [self realizaOperacao: @"dividir"];
}

- (IBAction)botaoRaizQuadrada:(id)sender {
    [self realizaOperacao: @"raizQuadrada"];
}

- (IBAction)botaoTrocaSinal:(id)sender {
    [self realizaOperacao: @"trocaSinal"];
}

- (IBAction)botaoElevaPotencia:(id)sender {
    [self realizaOperacao: @"elevaPotencia"];
}

@end
