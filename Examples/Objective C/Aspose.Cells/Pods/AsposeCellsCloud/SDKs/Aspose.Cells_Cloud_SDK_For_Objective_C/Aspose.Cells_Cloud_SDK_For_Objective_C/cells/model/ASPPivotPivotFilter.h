#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPAutoFilter.h"


@protocol ASPPivotPivotFilter
@end

@interface ASPPivotPivotFilter : ASPObject


@property(nonatomic) ASPAutoFilter* autoFilter;

@property(nonatomic) NSNumber* evaluationOrder;

@property(nonatomic) NSNumber* fieldIndex;

@property(nonatomic) NSString* filterType;

@property(nonatomic) NSNumber* measureFldIndex;

@property(nonatomic) NSNumber* memberPropertyFieldIndex;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* value1;

@property(nonatomic) NSString* value2;

@end
