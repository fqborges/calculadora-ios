//
//  Calculadora.m
//  CalculadoraIphone
//
//  Created by Grupo 7 on 26/08/12.
//  Copyright (c) 2012 Unisinos. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora

- (float) somar: (float) valor com: (float) vlr
{
    return valor + vlr;
}

- (float) subtrair: (float) valor com: (float) vlr
{
    return valor - vlr;
}

- (float) multiplicar: (float) valor com: (float) vlr
{
    return valor * vlr;
}

- (float) dividir: (float) valor por: (float) vlr
{
    return valor / vlr;
}

- (float) raizQuadrada: (float) vlr
{
    return sqrtf(vlr);
}

- (float) trocaSinal: (float) vlr
{
    return vlr * -1;
}

- (float) elevaPotencia: (float) base na: (float) potencia
{
    return powf(base, potencia);
}

@end
