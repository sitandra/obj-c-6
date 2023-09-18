//
//  Robot.m
//  obj-c-6
//
//  Created by Юлия Дебелова on 18.09.2023.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init:(NSString *) name x:(NSInteger)x y:(NSInteger)y {
    if (self = [super init]){
        _name = name;
        _x = x;
        _y = y;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    if(self = [super init]) {
        [self setName:[coder decodeObjectOfClass:[NSString class] forKey:@"RobotName"]];
        [self setX:[coder decodeIntegerForKey:@"RobotX"]];
        [self setY:[coder decodeIntegerForKey:@"RobotY"]];
        
    }
    return self;
}

+ (BOOL) supportsSecureCoding {
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"RobotName"];
    [coder encodeInteger:self.x forKey:@"RobotX"];
    [coder encodeInteger:self.y forKey:@"RobotY"];
}


- (NSString *)info {
    NSString * info = [NSString stringWithFormat:@"name: %@, x: %ld, y: %ld", _name, _x, _y];
    return info;
}

@end
