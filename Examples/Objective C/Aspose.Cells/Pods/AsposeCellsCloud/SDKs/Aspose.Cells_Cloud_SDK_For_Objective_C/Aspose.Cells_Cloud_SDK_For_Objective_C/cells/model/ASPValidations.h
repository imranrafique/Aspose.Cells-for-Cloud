#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPLink.h"
#import "ASPLinkElement.h"


@protocol ASPValidations
@end

@interface ASPValidations : ASPObject


@property(nonatomic) NSNumber* count;

@property(nonatomic) NSArray<ASPLinkElement>* validationList;

@property(nonatomic) ASPLink* link;

@end
