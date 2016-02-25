//
//  BNRPortfolio.m
//  Stocks
//
//  Created by brandon kehl on 11/30/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_myPortfolio;
   
}

@end

@implementation BNRPortfolio
-(void)setPortfolio:(NSArray *)h
{

    _myPortfolio = [h mutableCopy];


}
-(void)addStockToPortfolio:(BNRPortfolio *)s
{
    if(! _myPortfolio){
        
        
        _myPortfolio = [[NSMutableArray alloc] init];
    }
    
    [_myPortfolio addObject:s];
    
}
-(float)valueOfPortfolio
{

    float sum = 0;
    
    for(BNRStockHolding *s in _myPortfolio)
    {
    
        sum += [s valueInDollars];
    
    }
    
    return sum;
}
-(void)removeStockFromPortfolio:(BNRStockHolding *)s
{
    [_myPortfolio removeObject:s];
    
    
}

-(NSArray *)topHoldings
{
    NSMutableArray *top3Holdings  = [_myPortfolio mutableCopy]; //only mutable arrays can be sorted so that why we make a mutuble array
    NSSortDescriptor *vid = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    [top3Holdings sortUsingDescriptors:@[vid]];
    
    // Return array of top 3 holdings
    NSIndexSet *top3 = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 3)];
    return [top3Holdings objectsAtIndexes:top3];
    
    }
-(NSArray *)portfolioAlphabetical
{
    NSMutableArray *alphabeticalArray = [_myPortfolio mutableCopy]; //only mutable arrays can be sorted so that why we make a mutuble array 
    NSSortDescriptor *ABC = [NSSortDescriptor sortDescriptorWithKey:@"companyName" ascending:YES];
    [alphabeticalArray sortUsingDescriptors:@[ABC]];
    return alphabeticalArray;


}

@end
