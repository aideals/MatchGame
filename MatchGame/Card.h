//
//  Card.h
//  MatchGame
//
//  Created by 鹏 刘 on 2017/3/26.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL Unplayable;
@property (nonatomic, strong) NSString *content;

- (int)matchOtherCard:(NSArray *)card;

@end
