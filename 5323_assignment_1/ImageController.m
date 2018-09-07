//
//  ViewController.m
//  FlippedAssignmentOne
//
//  Created by Enyinnaya Asonye on 8/28/18.
//  Copyright © 2018 Enyinnaya Asonye. All rights reserved.
//

#import "ImageController.h"
#import "ImageModel.h"
@interface ImageController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong,nonatomic) UIImageView* imageView;


@property (strong,nonatomic) ImageModel* myImageModel;

@end

@implementation ImageController

-(ImageModel*)myImageModel{
    
    if(!_myImageModel)
        _myImageModel = [ImageModel sharedInstance];
    return _myImageModel;
}

-(NSString*)imageName{

    if(!_imageName)
        _imageName = @"Eric1";

    return _imageName;
}

-(UIImageView*)imageView{
    if(!_imageView)
        _imageView = [[UIImageView alloc] initWithImage:[[ImageModel sharedInstance] getImageWithName:self.imageName]];
    return _imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.imageView.image.size;
    self.scrollView.minimumZoomScale = 0.1;
    self.scrollView.delegate = self;

}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

@end
