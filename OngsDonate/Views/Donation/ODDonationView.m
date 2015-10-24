//
//  ODDonationView.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODDonationView.h"
#import "NSString+ODStringUtils.h"

@interface ODDonationView()
@property (weak, nonatomic) IBOutlet UILabel *lblCnpj;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblCoo;
@property (weak, nonatomic) IBOutlet UIButton *btnOng;
@property (weak, nonatomic) IBOutlet UILabel *lblValue;
@end
@implementation ODDonationView

#pragma mark - Initializations
-(void)initWithDonation:(ODDonation *)donation {
    self.lblCnpj.text = [NSString stringCnpjMaskedFromString:donation.tax.cnpj];
    self.lblDate.text = [NSString stringFormattedFromDate:donation.tax.date];
    self.lblValue.text = [NSString stringNumberMaskedFromDouble:donation.tax.total];
    
    [self.btnOng setTitle:donation.ong.name forState:UIControlStateNormal];
}

@end
