//
//  BNRStockHolding.m
//  Stocks
//
//  Created by brandon kehl on 11/23/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

@implementation BNRStockHolding

- (float)valueInDollars
{
    
    return [self currentSharePrices] * [self numberOfShares];
    
    
}
-(float) costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
    
    
}

-(void)setTickerLabel:(NSString *)s
{
    
    _tickerLabel = [s mutableCopy];
    
}
-(NSString *)tickerLabel:(NSString *)s
{

    return _tickerLabel;

}


// Overriding description
-(NSString *) description
{

    return [NSString stringWithFormat:@"\n\n   Company Name:%@\n Stock Symbol: %@\n    Number Of Shares:  %d\n   Purchase Share Price: %.2f\n  Current Share Price:  %.2f\n   Cost In Dollars: %.2f\n   Value In Dollars: %.2f\n    Foreign Stock: NO\n", self.companyName, self.tickerLabel, self.numberOfShares , self.purchaseSharePrice, self. currentSharePrices, self. costInDollars, self. valueInDollars];

}

@end
