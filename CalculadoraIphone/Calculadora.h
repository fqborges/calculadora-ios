//
//  Calculadora.h
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculadora : NSObject

- (float) somarAcumulado: (float) acumulado comValor: (float) valor;
- (float) subtrairAcumulado: (float) acumulado comValor: (float) valor;
- (float) multiplicarAcumulado: (float) acumulado comValor: (float) valor;
- (float) dividirAcumulado: (float) acumulado comValor: (float) valor;
- (float) raizQuadrada: (float) vlr;
- (float) trocaSinal: (float) vlr;
- (float) elevaPotenciaAcumulado: (float) acum comValor: (float) vlr;

@end
