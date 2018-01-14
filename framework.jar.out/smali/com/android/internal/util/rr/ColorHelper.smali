.class public Lcom/android/internal/util/rr/ColorHelper;
.super Ljava/lang/Object;
.source "ColorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 111
    if-nez p0, :cond_0

    .line 112
    return-object v2

    .line 113
    :cond_0
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 114
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 116
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    return-object v0
.end method

.method public static getBlendColor(IIF)I
    .locals 9
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 35
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    .line 37
    .local v3, "inverseRatio":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    .line 38
    .local v0, "a":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v4, v5, v6

    .line 39
    .local v4, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 40
    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v1, v5, v6

    .line 42
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static getColorFilter(I)Landroid/graphics/ColorMatrixColorFilter;
    .locals 9
    .param p0, "color"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    .line 80
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float v4, v5, v6

    .line 81
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 82
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v6

    .line 84
    .local v0, "b":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    .line 85
    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v8, v5, v6

    const/4 v6, 0x2

    aput v8, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    aput v8, v5, v6

    .line 86
    const/4 v6, 0x5

    aput v8, v5, v6

    const/4 v6, 0x6

    aput v3, v5, v6

    const/4 v6, 0x7

    aput v8, v5, v6

    const/16 v6, 0x8

    aput v8, v5, v6

    const/16 v6, 0x9

    aput v8, v5, v6

    .line 87
    const/16 v6, 0xa

    aput v8, v5, v6

    const/16 v6, 0xb

    aput v8, v5, v6

    const/16 v6, 0xc

    aput v0, v5, v6

    const/16 v6, 0xd

    aput v8, v5, v6

    const/16 v6, 0xe

    aput v8, v5, v6

    .line 88
    const/16 v6, 0xf

    aput v8, v5, v6

    const/16 v6, 0x10

    aput v8, v5, v6

    const/16 v6, 0x11

    aput v8, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x12

    aput v6, v5, v7

    const/16 v6, 0x13

    aput v8, v5, v6

    .line 84
    invoke-direct {v2, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 90
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 91
    .local v1, "cf":Landroid/graphics/ColorMatrixColorFilter;
    return-object v1
.end method

.method public static getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 95
    instance-of v5, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 97
    return-object p0

    .line 99
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    .local v1, "colorBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/util/rr/ColorHelper;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 101
    .local v3, "grayscaleBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v4, "pp":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    .local v2, "frontFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v0, "cc":Landroid/graphics/Canvas;
    invoke-virtual {v0, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method public static getLightenOrDarkenColor(I)I
    .locals 13
    .param p0, "originalColor"    # I

    .prologue
    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x437f0000    # 255.0f

    .line 57
    invoke-static {p0}, Lcom/android/internal/util/rr/ColorHelper;->isColorDark(I)Z

    move-result v4

    .line 58
    .local v4, "isOriginalColorDark":Z
    if-eqz v4, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    .line 59
    .local v2, "factor":F
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 60
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 61
    .local v6, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 62
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 65
    .local v1, "b":I
    if-eqz v4, :cond_1

    .line 67
    int-to-float v7, v6

    sub-float v8, v10, v2

    mul-float/2addr v7, v8

    div-float/2addr v7, v11

    add-float/2addr v7, v2

    mul-float/2addr v7, v11

    float-to-int v7, v7

    .line 68
    int-to-float v8, v3

    sub-float v9, v10, v2

    mul-float/2addr v8, v9

    div-float/2addr v8, v11

    add-float/2addr v8, v2

    mul-float/2addr v8, v11

    float-to-int v8, v8

    .line 69
    int-to-float v9, v1

    sub-float/2addr v10, v2

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v9, v2

    mul-float/2addr v9, v11

    float-to-int v9, v9

    .line 66
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 76
    .local v5, "newColor":I
    :goto_1
    return v5

    .line 58
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "factor":F
    .end local v3    # "g":I
    .end local v5    # "newColor":I
    .end local v6    # "r":I
    :cond_0
    const v2, 0x3f4ccccd    # 0.8f

    .restart local v2    # "factor":F
    goto :goto_0

    .line 72
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    .restart local v3    # "g":I
    .restart local v6    # "r":I
    :cond_1
    int-to-float v7, v6

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 73
    int-to-float v8, v3

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 74
    int-to-float v9, v1

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 71
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .restart local v5    # "newColor":I
    goto :goto_1
.end method

.method public static isColorDark(I)Z
    .locals 8
    .param p0, "color"    # I

    .prologue
    .line 46
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v4

    .line 47
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v6

    .line 46
    add-double/2addr v2, v4

    .line 48
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v6

    .line 46
    add-double/2addr v2, v4

    .line 48
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 46
    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v2

    .line 49
    .local v0, "a":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 50
    const/4 v2, 0x0

    return v2

    .line 52
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 127
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 129
    .local v6, "width":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 133
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 135
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 136
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 137
    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    return-object v0
.end method
