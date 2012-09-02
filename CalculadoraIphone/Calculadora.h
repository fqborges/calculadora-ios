//
//  Calculadora.h
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculadora : NSObject

- (float) somar: (float) vlr com: (float) valor;
- (float) subtrair: (float) vlr com: (float) valor;
- (float) multiplicar: (float) vlr com: (float) valor;
- (float) dividir: (float) vlr por: (float) valor;
- (float) raizQuadrada: (float) vlr;
- (float) trocaSinal: (float) vlr;
- (float) elevaPotencia: (float) base na: (float) potencia;

@end
