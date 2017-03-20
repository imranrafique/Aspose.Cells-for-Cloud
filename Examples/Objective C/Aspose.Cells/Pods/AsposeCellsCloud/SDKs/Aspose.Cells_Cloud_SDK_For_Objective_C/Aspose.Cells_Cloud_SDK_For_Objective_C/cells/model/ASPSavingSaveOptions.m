#import "ASPSavingSaveOptions.h"

@implementation ASPSavingSaveOptions

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"CachedFileFolder": @"cachedFileFolder", @"ClearData": @"clearData", @"CreateDirectory": @"createDirectory", @"EnableHTTPCompression": @"enableHTTPCompression", @"RefreshChartCache": @"refreshChartCache", @"SortNames": @"sortNames", @"ValidateMergedAreas": @"validateMergedAreas" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cachedFileFolder", @"clearData", @"createDirectory", @"enableHTTPCompression", @"refreshChartCache", @"sortNames", @"validateMergedAreas"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
