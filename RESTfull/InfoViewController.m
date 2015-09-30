//
//  InfoViewController.m
//  RESTfull
//
//  Created by ECEP2010 on 9/25/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
{
    
    NSMutableArray *myObject;
    
    // a dictionary object
    NSDictionary *dictionary;
    
    // define keys
    NSString *lastname;
    NSString *firstname;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    lastname = @"lastname";
    firstname = @"firstname";
    
    myObject = [[NSMutableArray  alloc] init];
    NSData *jsonSource = [self.content dataUsingEncoding:NSUTF8StringEncoding];//self.content;
    
    NSDictionary *jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonSource options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@",jsonObjects);
    NSDictionary *user =  [jsonObjects objectForKey:@"user"];
    NSLog(@"Info User: %@",user);
    self.textFieldLastName.text = [user objectForKey:@"lastname"];
    NSLog(@"last name: %@", [user objectForKey:@"lastname"]);
    self.textFieldFirstName.text = [user objectForKey:@"firstname"];
    NSLog(@"First name: %@",[user objectForKey:@"firstname"]);
    self.textFieldEmail.text = [user objectForKey:@"email"];
    self.textFieldPhonenumber.text = [user objectForKey:@"phone"];
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

@end
