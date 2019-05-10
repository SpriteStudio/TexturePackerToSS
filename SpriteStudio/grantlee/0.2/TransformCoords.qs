/**
    2019/05/09 Fixed an issue that pivot position becomes the trimmed position based when selected the option "Crop, keep postion" later than v4.0.2. Y.Endo
*/
var TrimmedPivotX = function(sprite)
{
    /* TEST reference to Trim Mode is not supported on v4.12.1.
    // <trimMode>Polygon</trimMode> <!-- None, Trim, Crop, CropKeepPos, Polygon -->
    if (settings.trimMode == "Trim")
    {
        ;
    }
    else if (settings.trimMode == "CropKeepPos")
    {
        ;
    }*/

    if(sprite.untrimmedSize.width === 0)
    {
        return "" + 0;
    }

    var ppX;
    if (sprite.trimmed)
    {
        // "Trim" comes here
        ppX = -0.5 + (sprite.pivotPoint.x - sprite.sourceRect.x) / sprite.sourceRect.width;
    }
    else
    {
        // "Crop, keep postion" always comes here. "Trim" but untrimmed image also comes here.
        if (sprite.sourceRect.x === 0 && sprite.sourceRect.y === 0)
        {
            // It seems not trimmed.
            ppX = -0.5 + sprite.pivotPointNorm.x;
        }
        else
        {
            // It seems trimmed.
            ppX = -0.5 + sprite.pivotPoint.x / sprite.untrimmedSize.width;
        }
    }
    return "" + ppX;
};
TrimmedPivotX.filterName = "TrimmedPivotX";
Library.addFilter("TrimmedPivotX");

var TrimmedMirroredPivotY = function(sprite)
{
    if(sprite.untrimmedSize.height === 0)
    {
        return "" + 0;
    }

    var ppY;
    if (sprite.trimmed)
    {
        // "Trim" comes here
        ppY = 0.5 - (sprite.pivotPoint.y - sprite.sourceRect.y) / sprite.sourceRect.height;
    }
    else
    {
        // "Crop, keep postion" always comes here. "Trim" but untrimmed image also comes here.
        if (sprite.sourceRect.x === 0 && sprite.sourceRect.y === 0)
        {
            // It seems not trimmed.
            ppY = 0.5 - sprite.pivotPointNorm.y;
        }
        else
        {
            // It seems trimmed.
            ppY = 0.5 - sprite.pivotPoint.y / sprite.untrimmedSize.height;
        }
    }
    return "" + ppY;
};
TrimmedMirroredPivotY.filterName = "TrimmedMirroredPivotY";
Library.addFilter("TrimmedMirroredPivotY");
