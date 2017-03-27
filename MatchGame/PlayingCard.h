//
//  PlayCard.h
//  MatchGame
//
//  Created by 鹏 刘 on 2017/3/26.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//


#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic,strong) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *)validSuits;
+ (NSInteger)maxRank;

@end
