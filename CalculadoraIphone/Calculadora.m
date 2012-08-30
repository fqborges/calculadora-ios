//
//  Calculadora.m
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora

- (float) somarAcumulado: (float) acum comValor: (float) vlr
{
    return acum + vlr;
}

- (float) subtrairAcumulado: (float) acum comValor: (float) vlr
{
    return acum - vlr;
}

- (float) multiplicarAcumulado: (float) acum comValor: (float) vlr
{
    return acum * vlr;
}

- (float) dividirAcumulado: (float) acum comValor: (float) vlr
{
    return acum / vlr;
}

- (float) raizQuadrada: (float) vlr
{
    return sqrtf(vlr);
}

- (float) trocaSinal: (float) vlr
{
    return vlr * -1;
}

- (float) elevaPotenciaAcumulado: (float) acum comValor: (float) vlr
{
    return powf(acum, vlr);
}

@end
