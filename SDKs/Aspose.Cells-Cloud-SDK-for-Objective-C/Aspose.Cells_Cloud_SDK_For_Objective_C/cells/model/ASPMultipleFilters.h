#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPDateTimeGroupItem.h"


@protocol ASPMultipleFilters
@end

@interface ASPMultipleFilters : ASPObject


@property(nonatomic) NSString* matchBlank;

@property(nonatomic) NSArray<ASPDateTimeGroupItem>* multipleFilterList;

@end