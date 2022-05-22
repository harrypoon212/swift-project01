//
//  DetailViewController.m
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _TitleLabel.text = _DetailModal[0];
    _DescriptionLabel.text = _DetailModal[1];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    NSLog(@"The Array of DetailModal: %@, %@, %@", _DetailModal[0], _DetailModal[1], _DetailModal[2]);
    
    self.navigationItem.title = _DetailModal[0];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playMovie:(id)sender {
    
    NSString *movieName = _DetailModal[3];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:movieName ofType:@"mp4"];
    
    NSURL *videoURL = [NSURL fileURLWithPath:filePath];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    
    controller.player = [AVPlayer playerWithURL:videoURL];
    
    [self presentViewController:controller animated:YES completion:nil];
    
}

- (IBAction)shareItem:(id)sender {
    
    NSString *title = _DetailModal[0];
    NSString *description = _DetailModal[1];
    UIImage *image = [UIImage imageNamed:_DetailModal[2]];
    
    UIActivityViewController *controller =
    [[UIActivityViewController alloc]
     initWithActivityItems:@[title, description, image]
     applicationActivities:nil];
    
    [self presentViewController:controller animated:YES completion:nil];

    
}
- (IBAction)playvideo:(id)sender {
    
    NSString *movieName = _DetailModal[5];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:movieName ofType:@"mp4"];
    
    NSURL *videoURL = [NSURL fileURLWithPath:filePath];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    
    controller.player = [AVPlayer playerWithURL:videoURL];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
    
}
- (IBAction)playSound:(id)sender {
    
    NSString *soundName = _DetailModal[3];
        NSString *typeName = _DetailModal[4];
        
        NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:soundName ofType:typeName];
        NSURL *fileURL = [NSURL fileURLWithPath:soundFilePath];
        
        self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:NULL];
        
        self.audioPlayer.volume = 0.6;
        
    //    self.audioPlayer.delegate = self;
        
        [self.audioPlayer prepareToPlay];
        
        [self.audioPlayer play];
    
}
- (IBAction)updateVolume:(id)sender {
    
    self.audioPlayer.volume = self.volumeSlider.value;
    
}

- (IBAction)web:(id)sender {
    NSString *urll = _DetailModal[6];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urll]];
}


- (IBAction)anime:(id)sender {
    
    
}

@end
