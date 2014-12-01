//Here i would like to know the diff between instace method & class method

#import <Foundation/Foundation.h>
//--------@interface section--------
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end
//---------@implementaion section--------
@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i", numerator,denominator);
}
-(void) setNumerator: (int) n
{
    numerator=n;
}
-(void) setDenominator: (int) d
{
    denominator=d;
}
@end
//------programming section----------
int main(int args, const char * argv[])
{
    @autoreleasepool{
        Fraction *myFraction1=[[Fraction alloc] init ];
        Fraction *myFraction2=[[Fraction alloc] init ];
        [myFraction1 setNumerator:4];
        [myFraction1 setDenominator:2];
        [myFraction2 setNumerator:6];
        [myFraction2 setDenominator:2];
        NSLog(@"the first fraction result is:");
        [myFraction1 print];
        NSLog(@"the second fraction result is:");
        [myFraction2 print];
    }
    return 0;
}