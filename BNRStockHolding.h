//
//  BNRStockHolding.h
//  Stocks
//
//  Created by brandon kehl on 11/23/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPortfolio.h"

@interface BNRStockHolding : NSObject



@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrices;
@property (nonatomic) int numberOfShares;
@property (nonatomic,copy) NSString *tickerLabel;
@property (nonatomic,copy) NSString *companyName;


-(float)costInDollars;
-(float)valueInDollars;

@end
