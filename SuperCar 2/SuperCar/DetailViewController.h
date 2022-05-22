//
//  DetailViewController.h
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVKit/AVKit.h>

#import <AVFoundation/AVFoundation.h>


@interface DetailViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;

@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;

@property (strong, nonatomic) NSArray *DetailModal;

@property (nonatomic, strong) AVPlayer *player;

@property (nonatomic, strong) AVPlayerViewController *controller;

- (IBAction)playMovie:(id)sender;

- (IBAction)shareItem:(id)sender;

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

@property (weak, nonatomic) IBOutlet UIButton *anime;

- (IBAction)playSound:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *volumeSlider;

- (IBAction)updateVolume:(id)sender;




@end
