//
//  PHFetchResult+Filter.h
//  QBImagePicker
//
//  Created by Ji Fang on 3/3/16.
//  Copyright © 2016 Katsuma Tanaka. All rights reserved.
//

#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

typedef BOOL (^QBEvaluationBlock)(id evaluatedObject);

@interface PHFetchResult (Filter)

- (PHFetchResult *)filterSphericImages;

@end

NS_ASSUME_NONNULL_END
