//
//  main.m
//  Stocks
//
//  Created by brandon kehl on 11/23/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //Instance of Foreign stock
        BNRForeignStockHolding *foreignStock0 = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *foreignStock1 = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *foreignStock2 = [[BNRForeignStockHolding alloc] init];
       
        // Instance of USD
        BNRStockHolding *stock0 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        
        
        BNRPortfolio *porfolio = [[BNRPortfolio alloc] init];
        
        
        

        //USD
        [stock0 setCompanyName:@"Apple"];
        [stock0 setPurchaseSharePrice:2.30];
        [stock0 setCurrentSharePrices:4.50];
        [stock0 setNumberOfShares:40];
        [stock0 setTickerLabel:@"AAPL"];
        [porfolio addStockToPortfolio:stock0];
        
        //USD
        [stock1 setCompanyName:@"Nestle"];
        [stock1 setPurchaseSharePrice:12.19];
        [stock1 setCurrentSharePrices:10.56];
        [stock1 setNumberOfShares:90];
        [stock1 setTickerLabel:@"NSRGY"];
        [porfolio addStockToPortfolio:stock1];
        
        //USD
        [stock2 setCompanyName:@"SouthWest"];
        [stock2 setPurchaseSharePrice:45.10];
        [stock2 setCurrentSharePrices:49.51];
        [stock2 setNumberOfShares:210];
        [stock2 setTickerLabel:@"LUV"];
        [porfolio addStockToPortfolio:stock2];
        
        //Foreign Stocks----------------------------------------
        
        //Foreign (What it's being converted to)
        [foreignStock0 setCompanyName:@"Microsoft"];
        [foreignStock0 setPurchaseSharePrice:2.30];
        [foreignStock0 setCurrentSharePrices:4.50];
        [foreignStock0 setNumberOfShares:40];
        [foreignStock0 setConversionRate:3.00];
        [foreignStock0 setTickerLabel:@"MSFT"];
        [porfolio addStockToPortfolio:foreignStock0];
        
        
        //Foreign(What it's being converted to)
        [foreignStock1 setCompanyName:@"AT&T"];
        [foreignStock1 setPurchaseSharePrice:12.19];
        [foreignStock1 setCurrentSharePrices:10.56];
        [foreignStock1 setNumberOfShares:90];
        [foreignStock1 setConversionRate:3.00];
        [foreignStock1 setTickerLabel:@"T"];
        [porfolio addStockToPortfolio:foreignStock1];

        
        
        //Foreign(What it's being converted to)
        [foreignStock2 setCompanyName:@"Google"];
        [foreignStock2 setPurchaseSharePrice:45.10];
        [foreignStock2 setCurrentSharePrices:49.51];
        [foreignStock2 setNumberOfShares:210];
        [foreignStock2 setConversionRate:3.00];
        [foreignStock2 setTickerLabel:@"GOOG"];
        [porfolio addStockToPortfolio:foreignStock2];
        
        
        for(BNRStockHolding *stock in porfolio.myPortfolio){
        
            // Looks at the overridden version of the description methods
            // Both BNRStockHolding and BNRForeignStockholding have their own desription method
            NSLog(@"%@", stock);
        
        
        }
        
        // Remove google from the portfolio
        [porfolio removeStockFromPortfolio:foreignStock2];
        NSLog(@"My new portfolio is");
        //Print out the new portfolio
       for(BNRStockHolding *newStock in porfolio.myPortfolio){
            
            NSLog(@" %@ ",newStock);
       
        }
        
        NSLog(@"My portfolio has a value of $%.2f", [porfolio valueOfPortfolio]);
        
        NSLog(@"Most valuable holdings are:  ");
        NSArray *top3Holdings = [NSArray array]; //Make new array to add holdings to it
        top3Holdings = [porfolio topHoldings]; //Method being acted on
        
        for(BNRStockHolding *top in top3Holdings){
        
            NSLog(@"\n    Company Name: %@\n   Total Cost: $%.2f\n    Total Value: $%.2f\n", top.companyName, top.valueInDollars, top.valueInDollars);
        
        }
        
        
        NSArray *portfolioAlphabetical = [NSArray array]; //Make array to add stuff to it
        
        NSLog(@"Portfolio Sorted alphabetically: ");
        portfolioAlphabetical = [porfolio portfolioAlphabetical]; //Method being acted on
        for(BNRStockHolding *alpha in portfolioAlphabetical ){
        
            NSLog(@"\n  Company Name: %@\n  Stock symbol: %@\n  Total Value: $%.2f\n ", alpha.companyName, alpha.tickerLabel, alpha.valueInDollars);
        
        }
        
        
    
    }
    return 0;
}
