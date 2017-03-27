//
//  Card.m
//  MatchGame
//
//  Created by 鹏 刘 on 2017/3/26.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)matchOtherCard:(NSArray *)cards
{
    int score = 0;
    
    for (Card *card in cards) {
        if ([self.content isEqualToString:card.content]) {
            score = 1;
        }
    }
    return score;
}

@end
