//
//  ViewController.m
//  Objective-C-AnimatedGif
//
//  Created by Angelos Staboulis on 12/11/24.
//

#import "ViewController.h"
#import "ImageIO/CGImageAnimation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filename = [[NSBundle mainBundle] pathForResource:@"candle" ofType:@"gif"];
    NSURL *urlFilename = [NSURL fileURLWithPath:filename];
    CGAnimateImageAtURLWithBlock((CFURLRef)urlFilename,nil, ^(size_t index, CGImageRef  _Nonnull image, bool * _Nonnull stop) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithCGImage:image]];
        [imageView setFrame:UIScreen.mainScreen.bounds];
        [[self view] addSubview:imageView];
    });
   
}


@end
