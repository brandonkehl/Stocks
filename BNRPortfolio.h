//
//  BNRPortfolio.h
//  Stocks
//
//  Created by brandon kehl on 11/30/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *myPortfolio; // The portfolio full of stocks
@property (nonatomic, copy) NSArray *portfolioAlphabetical; // Portfolio sorted alphabetically
@property (nonatomic, copy) NSArray *topHoldings; // The top holding in the portfolio
-(void)removeStockFromPortfolio:(BNRStockHolding *)s; // Removes a stock from the portfolio of stocks
-(void)addStockToPortfolio:(BNRStockHolding *)s; // Add stocks
-(float)valueOfPortfolio; // Returns value of the portfolio
@end
