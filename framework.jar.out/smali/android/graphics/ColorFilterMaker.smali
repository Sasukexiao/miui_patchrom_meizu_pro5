.class public Landroid/graphics/ColorFilterMaker;
.super Ljava/lang/Object;
.source "ColorFilterMaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBWColor(IF)Landroid/graphics/ColorFilter;
    .locals 2
    .param p0, "newColor"    # I
    .param p1, "intens"    # F

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 30
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    invoke-static {v0, p0, p1}, Landroid/graphics/ColorFilterMaker;->changeBWColor(Landroid/graphics/ColorMatrix;IF)V

    .line 32
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method private static changeBWColor(Landroid/graphics/ColorMatrix;IF)V
    .locals 12
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "newColor"    # I
    .param p2, "itens"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 85
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 86
    .local v0, "A":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 87
    .local v3, "R":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v6, v8

    .line 88
    .local v2, "G":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 91
    .local v1, "B":F
    const/16 v6, 0x14

    new-array v4, v6, [F

    .line 92
    aput v3, v4, v9

    aput v7, v4, v10

    aput v7, v4, v11

    const/4 v6, 0x3

    aput v7, v4, v6

    const/4 v6, 0x4

    aput v7, v4, v6

    .line 93
    const/4 v6, 0x5

    aput v7, v4, v6

    const/4 v6, 0x6

    aput v2, v4, v6

    const/4 v6, 0x7

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v7, v4, v6

    const/16 v6, 0x9

    aput v7, v4, v6

    .line 94
    const/16 v6, 0xa

    aput v7, v4, v6

    const/16 v6, 0xb

    aput v7, v4, v6

    const/16 v6, 0xc

    aput v1, v4, v6

    const/16 v6, 0xd

    aput v7, v4, v6

    const/16 v6, 0xe

    aput v7, v4, v6

    .line 95
    const/16 v6, 0xf

    aput v7, v4, v6

    const/16 v6, 0x10

    aput v7, v4, v6

    const/16 v6, 0x11

    aput v7, v4, v6

    const/16 v6, 0x12

    aput v0, v4, v6

    const/16 v6, 0x13

    aput v7, v4, v6

    .line 99
    .local v4, "mat":[F
    const/16 v6, 0x14

    new-array v5, v6, [F

    .line 100
    aput p2, v5, v9

    aput p2, v5, v10

    aput p2, v5, v11

    const/4 v6, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    aput v7, v5, v6

    .line 101
    const/4 v6, 0x5

    aput p2, v5, v6

    const/4 v6, 0x6

    aput p2, v5, v6

    const/4 v6, 0x7

    aput p2, v5, v6

    const/16 v6, 0x8

    aput v7, v5, v6

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 102
    const/16 v6, 0xa

    aput p2, v5, v6

    const/16 v6, 0xb

    aput p2, v5, v6

    const/16 v6, 0xc

    aput p2, v5, v6

    const/16 v6, 0xd

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v7, v5, v6

    .line 103
    const/16 v6, 0xf

    aput v7, v5, v6

    const/16 v6, 0x10

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v7, v5, v6

    const/16 v6, 0x12

    aput v0, v5, v6

    const/16 v6, 0x13

    aput v7, v5, v6

    .line 106
    .local v5, "matrix":[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 83
    return-void
.end method

.method public static changeColor(IF)Landroid/graphics/ColorFilter;
    .locals 2
    .param p0, "newColor"    # I
    .param p1, "intens"    # F

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 20
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    invoke-static {v0, p0, p1}, Landroid/graphics/ColorFilterMaker;->changeColor(Landroid/graphics/ColorMatrix;IF)V

    .line 22
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method private static changeColor(Landroid/graphics/ColorMatrix;IF)V
    .locals 12
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "newColor"    # I
    .param p2, "itens"    # F

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 59
    .local v0, "A":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 60
    .local v3, "R":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v6, v8

    .line 61
    .local v2, "G":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 64
    .local v1, "B":F
    const/16 v6, 0x14

    new-array v4, v6, [F

    .line 65
    aput v3, v4, v10

    aput v7, v4, v11

    const/4 v6, 0x2

    aput v7, v4, v6

    const/4 v6, 0x3

    aput v7, v4, v6

    const/4 v6, 0x4

    aput v7, v4, v6

    .line 66
    const/4 v6, 0x5

    aput v7, v4, v6

    const/4 v6, 0x6

    aput v2, v4, v6

    const/4 v6, 0x7

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v7, v4, v6

    const/16 v6, 0x9

    aput v7, v4, v6

    .line 67
    const/16 v6, 0xa

    aput v7, v4, v6

    const/16 v6, 0xb

    aput v7, v4, v6

    const/16 v6, 0xc

    aput v1, v4, v6

    const/16 v6, 0xd

    aput v7, v4, v6

    const/16 v6, 0xe

    aput v7, v4, v6

    .line 68
    const/16 v6, 0xf

    aput v7, v4, v6

    const/16 v6, 0x10

    aput v7, v4, v6

    const/16 v6, 0x11

    aput v7, v4, v6

    const/16 v6, 0x12

    aput v9, v4, v6

    const/16 v6, 0x13

    aput v7, v4, v6

    .line 73
    .local v4, "mat":[F
    const/16 v6, 0x14

    new-array v5, v6, [F

    .line 74
    aput p2, v5, v10

    aput p2, v5, v11

    const/4 v6, 0x2

    aput p2, v5, v6

    const/4 v6, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    aput v7, v5, v6

    .line 75
    const/4 v6, 0x5

    aput p2, v5, v6

    const/4 v6, 0x6

    aput p2, v5, v6

    const/4 v6, 0x7

    aput p2, v5, v6

    const/16 v6, 0x8

    aput v7, v5, v6

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 76
    const/16 v6, 0xa

    aput p2, v5, v6

    const/16 v6, 0xb

    aput p2, v5, v6

    const/16 v6, 0xc

    aput p2, v5, v6

    const/16 v6, 0xd

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v7, v5, v6

    .line 77
    const/16 v6, 0xf

    aput v7, v5, v6

    const/16 v6, 0x10

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v7, v5, v6

    const/16 v6, 0x12

    aput v9, v5, v6

    const/16 v6, 0x13

    aput v7, v5, v6

    .line 80
    .local v5, "matrix":[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 56
    return-void
.end method

.method public static changeColorAlpha(IFF)Landroid/graphics/ColorFilter;
    .locals 2
    .param p0, "newColor"    # I
    .param p1, "intens"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 39
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    invoke-static {v0, p0, p1, p2}, Landroid/graphics/ColorFilterMaker;->changeColorAlpha(Landroid/graphics/ColorMatrix;IFF)V

    .line 41
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method private static changeColorAlpha(Landroid/graphics/ColorMatrix;IFF)V
    .locals 12
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "newColor"    # I
    .param p2, "itens"    # F
    .param p3, "alpha"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 111
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 112
    .local v0, "A":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 113
    .local v3, "R":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v6, v8

    .line 114
    .local v2, "G":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 117
    .local v1, "B":F
    const/16 v6, 0x14

    new-array v4, v6, [F

    .line 118
    aput v3, v4, v9

    aput v7, v4, v10

    aput v7, v4, v11

    const/4 v6, 0x3

    aput v7, v4, v6

    const/4 v6, 0x4

    aput v7, v4, v6

    .line 119
    const/4 v6, 0x5

    aput v7, v4, v6

    const/4 v6, 0x6

    aput v2, v4, v6

    const/4 v6, 0x7

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v7, v4, v6

    const/16 v6, 0x9

    aput v7, v4, v6

    .line 120
    const/16 v6, 0xa

    aput v7, v4, v6

    const/16 v6, 0xb

    aput v7, v4, v6

    const/16 v6, 0xc

    aput v1, v4, v6

    const/16 v6, 0xd

    aput v7, v4, v6

    const/16 v6, 0xe

    aput v7, v4, v6

    .line 121
    const/16 v6, 0xf

    aput v7, v4, v6

    const/16 v6, 0x10

    aput v7, v4, v6

    const/16 v6, 0x11

    aput v7, v4, v6

    const/16 v6, 0x12

    aput v0, v4, v6

    const/16 v6, 0x13

    aput p3, v4, v6

    .line 125
    .local v4, "mat":[F
    const/16 v6, 0x14

    new-array v5, v6, [F

    .line 126
    aput p2, v5, v9

    aput p2, v5, v10

    aput p2, v5, v11

    const/4 v6, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    aput v7, v5, v6

    .line 127
    const/4 v6, 0x5

    aput p2, v5, v6

    const/4 v6, 0x6

    aput p2, v5, v6

    const/4 v6, 0x7

    aput p2, v5, v6

    const/16 v6, 0x8

    aput v7, v5, v6

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 128
    const/16 v6, 0xa

    aput p2, v5, v6

    const/16 v6, 0xb

    aput p2, v5, v6

    const/16 v6, 0xc

    aput p2, v5, v6

    const/16 v6, 0xd

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v7, v5, v6

    .line 129
    const/16 v6, 0xf

    aput v7, v5, v6

    const/16 v6, 0x10

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v7, v5, v6

    const/16 v6, 0x12

    aput v0, v5, v6

    const/16 v6, 0x13

    aput v7, v5, v6

    .line 132
    .local v5, "matrix":[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 109
    return-void
.end method

.method public static changeHue(II)Landroid/graphics/ColorFilter;
    .locals 2
    .param p0, "newHue"    # I
    .param p1, "intens"    # I

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 48
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    invoke-static {v0, p0, p1}, Landroid/graphics/ColorFilterMaker;->changeHue(Landroid/graphics/ColorMatrix;II)V

    .line 50
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method private static changeHue(Landroid/graphics/ColorMatrix;II)V
    .locals 13
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "newHue"    # I
    .param p2, "intens"    # I

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const v11, 0x3e59c66d

    const v10, 0x3f3714ba

    const v9, 0x3d93cd57

    const/4 v8, 0x0

    .line 140
    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 141
    .local v0, "cosVal":F
    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 142
    .local v5, "sinVal":F
    const v3, 0x3e59c66d

    .line 143
    .local v3, "lumR":F
    const v2, 0x3f3714ba

    .line 144
    .local v2, "lumG":F
    const v1, 0x3d93cd57

    .line 147
    .local v1, "lumB":F
    const/16 v6, 0x19

    new-array v4, v6, [F

    .line 148
    const v6, 0x3f498e65

    mul-float/2addr v6, v0

    add-float/2addr v6, v11

    neg-float v7, v3

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    add-float/2addr v6, v12

    const/4 v7, 0x0

    aput v6, v4, v7

    neg-float v6, v2

    mul-float/2addr v6, v0

    add-float/2addr v6, v10

    neg-float v7, v2

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v4, v7

    neg-float v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    const v7, 0x3f6d8655

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x2

    aput v6, v4, v7

    const/4 v6, 0x3

    aput v8, v4, v6

    int-to-float v6, p2

    const/4 v7, 0x4

    aput v6, v4, v7

    .line 149
    neg-float v6, v3

    mul-float/2addr v6, v0

    add-float/2addr v6, v11

    const v7, 0x3e126e98    # 0.143f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x5

    aput v6, v4, v7

    const v6, 0x3e91d68c

    mul-float/2addr v6, v0

    add-float/2addr v6, v10

    const v7, 0x3e0f5c29    # 0.14f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    add-float/2addr v6, v12

    const/4 v7, 0x6

    aput v6, v4, v7

    neg-float v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    const v7, -0x416f1aa0    # -0.283f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x7

    aput v6, v4, v7

    const/16 v6, 0x8

    aput v8, v4, v6

    int-to-float v6, p2

    const/16 v7, 0x9

    aput v6, v4, v7

    .line 150
    neg-float v6, v3

    mul-float/2addr v6, v0

    add-float/2addr v6, v11

    const v7, 0x3f498e65

    neg-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/16 v7, 0xa

    aput v6, v4, v7

    neg-float v6, v2

    mul-float/2addr v6, v0

    add-float/2addr v6, v10

    mul-float v7, v5, v10

    add-float/2addr v6, v7

    const/16 v7, 0xb

    aput v6, v4, v7

    const v6, 0x3f6d8655

    mul-float/2addr v6, v0

    add-float/2addr v6, v9

    mul-float v7, v5, v9

    add-float/2addr v6, v7

    add-float/2addr v6, v12

    const/16 v7, 0xc

    aput v6, v4, v7

    const/16 v6, 0xd

    aput v8, v4, v6

    int-to-float v6, p2

    const/16 v7, 0xe

    aput v6, v4, v7

    .line 152
    const/16 v6, 0xf

    aput v8, v4, v6

    const/16 v6, 0x10

    aput v8, v4, v6

    const/16 v6, 0x11

    aput v8, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x12

    aput v6, v4, v7

    const/16 v6, 0x13

    aput v8, v4, v6

    .line 153
    const/16 v6, 0x14

    aput v8, v4, v6

    const/16 v6, 0x15

    aput v8, v4, v6

    const/16 v6, 0x16

    aput v8, v4, v6

    const/16 v6, 0x17

    aput v8, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x18

    aput v6, v4, v7

    .line 156
    .local v4, "mat":[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 137
    return-void
.end method
