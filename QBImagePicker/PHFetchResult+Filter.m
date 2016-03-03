//
//  PHFetchResult+Filter.m
//  QBImagePicker
//
//  Created by Ji Fang on 3/3/16.
//  Copyright © 2016 Katsuma Tanaka. All rights reserved.
//

@import Photos;

#import "PHFetchResult+Filter.h"

@implementation PHFetchResult (Filter)

- (PHFetchResult *)filterSphericImages
{
    NSMutableArray *assets = [NSMutableArray arrayWithCapacity:self.count];
    for (PHAsset *asset in self) {
        if (asset.pixelWidth == 2 * asset.pixelHeight) {
            [assets addObject:asset];
        }
    }
    PHAssetCollection *sphericImages = [PHAssetCollection transientAssetCollectionWithAssets:assets title:@"Spheric"];
    return [PHAsset fetchAssetsInAssetCollection:sphericImages options:nil];
}

@end
