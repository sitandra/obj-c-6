//
//  Robot.h
//  obj-c-6
//
//  Created by Юлия Дебелова on 18.09.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject<NSCoding, NSSecureCoding>
@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;
@property (nonatomic, strong) NSString* name;

-(instancetype) init:(NSString *) name x: (NSInteger) x y: (NSInteger) y;
-(void) encodeWithCoder:(NSCoder *) coder;
-(id) initWithCoder:(NSCoder *) coder;
-(NSString *) info;
@end

NS_ASSUME_NONNULL_END
