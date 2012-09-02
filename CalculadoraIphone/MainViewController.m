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
{
    @private
    Calculadora* calc;
}
@end

@implementation MainViewController
@synthesize visor;
@synthesize valor;
@synthesize tecladoExtendido;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.valor.inputAccessoryView = self.tecladoExtendido;
    
    // inicializa a calculadora
    calc = [Calculadora new];
}

- (void)viewDidUnload
{
    [self setVisor:nil];
    [self setValor:nil];
    [self setTecladoExtendido:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    //destroi a calculadora
    calc = nil;
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
    float valDisplay = [visor.text floatValue];
    float valInput = [valor.text floatValue];
    
    if (valInput != 0)
    {
                
        if (operacao == @"somar")
        {
            visor.text = [[NSNumber numberWithFloat:[calc somar: valDisplay  com: valInput]] stringValue];
            
        } else if (operacao == @"subtrair")
        {
            visor.text = [[NSNumber numberWithFloat:[calc subtrair: valDisplay  com: valInput]] stringValue];
        }
        else if (operacao == @"multiplicar")
        {
            visor.text = [[NSNumber numberWithFloat:[calc multiplicar: valDisplay  com: valInput]] stringValue];
        }
        else if (operacao == @"dividir")
        {
            visor.text = [[NSNumber numberWithFloat:[calc dividir: valDisplay  por: valInput]] stringValue];
        }
        else if (operacao == @"raizQuadrada")
        {
            visor.text = [[NSNumber numberWithFloat:[calc raizQuadrada: valInput]] stringValue];
        }
        else if (operacao == @"trocaSinal")
        {
            visor.text = [[NSNumber numberWithFloat:[calc trocaSinal: valInput]] stringValue];
        }
        else if (operacao == @"elevaPotencia")
        {
            visor.text = [[NSNumber numberWithFloat:[calc elevaPotencia: valDisplay na: valInput]] stringValue];
        }
        valor.text=nil;        
    }
    else
    {
        if (valDisplay != 0){

            if (operacao == @"raizQuadrada")
            {
                visor.text = [[NSNumber numberWithFloat:[calc raizQuadrada: valDisplay]] stringValue];
            }
            else if (operacao == @"trocaSinal")
            {
                visor.text = [[NSNumber numberWithFloat:[calc trocaSinal: valDisplay]] stringValue];
            }
        }
    }
}

/*
 operacoes
 */

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
- (IBAction)botaoZerar:(id)sender {
    [visor setText:@"0"];
    [valor setText:@""];
}

/*
 botoes auxiliares do teclado
 */
- (IBAction)tecladoOk:(id)sender {
    [valor endEditing:YES];
}

- (IBAction)tecladoPonto:(id)sender {
    [valor insertText:@"."];
}
- (IBAction)tecladoTrocaSinal:(id)sender {
    float vlr = [valor.text floatValue];
    valor.text = [[NSNumber numberWithFloat:[calc trocaSinal: vlr]] stringValue];
    
}

@end
