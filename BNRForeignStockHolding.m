//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by brandon kehl on 12/1/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding


-(float) costInDollars
{
    float cost = [super costInDollars];
    return cost * self.conversionRate;
    
    
}
-(float) valueInDollars
{
    float value = [super valueInDollars];
    return value * _conversionRate;
    
    
    
}


-(NSString *) description
{
    
    return [NSString stringWithFormat:@"\n\n   Company Name:%@\n     Stock Symbol: %@\n    Number Of Shares:  %d\n   Purchase Share Price: %.2f\n  Current Share Price:  %.2f\n   Cost In Dollars: %.2f\n   Value In Dollars: %.2f\n    Conversion Rate:  %.2f\n  Foreign Stock:  YES\n", self.companyName, self.tickerLabel, self.numberOfShares , self.purchaseSharePrice, self. currentSharePrices, self. costInDollars, self. valueInDollars, self.conversionRate];
    
}


@end