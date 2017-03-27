//
//  PlayCard.m
//  MatchGame
//
//  Created by 鹏 刘 on 2017/3/26.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)matchOtherCard:(NSArray *)card
{
    int score = 0;
    if (card.count == 0) {
        PlayingCard *otherCard = [card lastObject];
        if ([otherCard.suit isEqualToString:self.suit]) {
             score = 1;
        }
        else if (otherCard.rank == self.rank) {
             score = 4;
        }
    }

    return score;
}


- (NSString *)content
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥︎",@"♠︎",@"♣︎",@"♦︎"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSInteger)maxRank
{
    return [self rankStrings].count - 1;
}

- (void)setRank:(NSInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}


@end
