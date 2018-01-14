.class public Lcom/android/internal/util/rr/AwesomeAnimationHelper;
.super Ljava/lang/Object;
.source "AwesomeAnimationHelper.java"


# static fields
.field public static final ANIMATION_DEFAULT:I = 0x0

.field public static final ANIMATION_FADE:I = 0x1

.field public static final ANIMATION_GROW_SHRINK:I = 0x9

.field public static final ANIMATION_GROW_SHRINK_BOTTOM:I = 0xb

.field public static final ANIMATION_GROW_SHRINK_CENTER:I = 0xa

.field public static final ANIMATION_GROW_SHRINK_LEFT:I = 0xc

.field public static final ANIMATION_GROW_SHRINK_RIGHT:I = 0xd

.field public static final ANIMATION_SLIDE_DOWN:I = 0x7

.field public static final ANIMATION_SLIDE_LEFT:I = 0x3

.field public static final ANIMATION_SLIDE_LEFT_NO_FADE:I = 0x5

.field public static final ANIMATION_SLIDE_RIGHT:I = 0x2

.field public static final ANIMATION_SLIDE_RIGHT_NO_FADE:I = 0x4

.field public static final ANIMATION_SLIDE_UP:I = 0x6

.field public static final ANIMATION_TRANSLUCENT:I = 0x8

.field public static final INTERPOLATOR_ACCELERATE:I = 0x1

.field public static final INTERPOLATOR_ACCELERATE_DECELERATE:I = 0x3

.field public static final INTERPOLATOR_ANTICIPATE:I = 0x4

.field public static final INTERPOLATOR_ANTICIPATE_OVERSHOOT:I = 0x6

.field public static final INTERPOLATOR_BOUNCE:I = 0x7

.field public static final INTERPOLATOR_CYCLE:I = 0x8

.field public static final INTERPOLATOR_DECELERATE:I = 0x2

.field public static final INTERPOLATOR_LINEAR:I = 0x9

.field public static final INTERPOLATOR_NONE:I = 0x0

.field public static final INTERPOLATOR_OVERSHOOT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimations(IZZ)[I
    .locals 7
    .param p0, "mAnim"    # I
    .param p1, "enterOnly"    # Z
    .param p2, "reverseExit"    # Z

    .prologue
    const v2, 0x10a007b

    const v3, 0x10a007a

    const v1, 0x10a0079

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 80
    .local v0, "anim":[I
    packed-switch p0, :pswitch_data_0

    .line 134
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    const v1, 0x10a0091

    aput v1, v0, v5

    .line 83
    const v1, 0x10a0090

    aput v1, v0, v6

    goto :goto_0

    .line 86
    :pswitch_1
    if-eqz p2, :cond_0

    const v1, 0x10a008b

    :goto_1
    aput v1, v0, v5

    .line 87
    const v1, 0x10a0084

    aput v1, v0, v6

    goto :goto_0

    .line 86
    :cond_0
    const v1, 0x10a008e

    goto :goto_1

    .line 90
    :pswitch_2
    if-eqz p2, :cond_1

    const v1, 0x10a008e

    :goto_2
    aput v1, v0, v5

    .line 91
    const v1, 0x10a0080

    aput v1, v0, v6

    goto :goto_0

    .line 90
    :cond_1
    const v1, 0x10a008b

    goto :goto_2

    .line 94
    :pswitch_3
    if-eqz p2, :cond_2

    const v1, 0x10a008f

    :goto_3
    aput v1, v0, v5

    .line 95
    const v1, 0x10a0086

    aput v1, v0, v6

    goto :goto_0

    .line 94
    :cond_2
    const v1, 0x10a0088

    goto :goto_3

    .line 98
    :pswitch_4
    if-eqz p2, :cond_3

    const v1, 0x10a0088

    :goto_4
    aput v1, v0, v5

    .line 99
    const v1, 0x10a007e

    aput v1, v0, v6

    goto :goto_0

    .line 98
    :cond_3
    const v1, 0x10a008f

    goto :goto_4

    .line 102
    :pswitch_5
    if-eqz p2, :cond_4

    const v1, 0x10a008a

    :goto_5
    aput v1, v0, v5

    .line 103
    const v1, 0x10a0083

    aput v1, v0, v6

    goto :goto_0

    .line 102
    :cond_4
    const v1, 0x10a008d

    goto :goto_5

    .line 106
    :pswitch_6
    if-eqz p2, :cond_5

    const v1, 0x10a008d

    :goto_6
    aput v1, v0, v5

    .line 107
    const v1, 0x10a007f

    aput v1, v0, v6

    goto :goto_0

    .line 106
    :cond_5
    const v1, 0x10a008a

    goto :goto_6

    .line 110
    :pswitch_7
    const v1, 0x10a00a3

    aput v1, v0, v5

    .line 111
    const v1, 0x10a00a1

    aput v1, v0, v6

    goto :goto_0

    .line 114
    :pswitch_8
    if-eqz p2, :cond_6

    :goto_7
    aput v1, v0, v5

    .line 115
    const v1, 0x10a0027

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 114
    goto :goto_7

    .line 118
    :pswitch_9
    const v1, 0x10a0077

    aput v1, v0, v5

    .line 119
    const v1, 0x10a0023

    aput v1, v0, v6

    goto/16 :goto_0

    .line 122
    :pswitch_a
    if-eqz p2, :cond_7

    const v1, 0x10a007c

    :goto_8
    aput v1, v0, v5

    .line 123
    const v1, 0x10a0026

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 122
    goto :goto_8

    .line 126
    :pswitch_b
    if-eqz p2, :cond_8

    :goto_9
    aput v3, v0, v5

    .line 127
    const v1, 0x10a0028

    aput v1, v0, v6

    goto/16 :goto_0

    .line 126
    :cond_8
    const v3, 0x10a007c

    goto :goto_9

    .line 130
    :pswitch_c
    if-eqz p2, :cond_9

    :goto_a
    aput v2, v0, v5

    .line 131
    const v1, 0x10a0025

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_9
    move v2, v1

    .line 130
    goto :goto_a

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getAnimationsList()[I
    .locals 5

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "animList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 71
    .local v3, "length":I
    new-array v0, v3, [I

    .line 72
    .local v0, "anim":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public static getInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    packed-switch p1, :pswitch_data_0

    .line 227
    .end local v0    # "itplr":Landroid/view/animation/Interpolator;
    :goto_0
    return-object v0

    .line 200
    .restart local v0    # "itplr":Landroid/view/animation/Interpolator;
    :pswitch_0
    const v1, 0x10a0005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 203
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_1
    const v1, 0x10a0006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 206
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_2
    const v1, 0x10a0004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 209
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_3
    const v1, 0x10a0007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 212
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_4
    const v1, 0x10a0008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 215
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_5
    const v1, 0x10a0009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 218
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_6
    const v1, 0x10a000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 221
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_7
    const v1, 0x10a000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 224
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    :pswitch_8
    const v1, 0x10a000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .local v0, "itplr":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getProperName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAnim"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 140
    .local v1, "value":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 184
    const v2, 0x10400fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    .line 142
    :pswitch_0
    const v2, 0x10400f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 145
    :pswitch_1
    const v2, 0x10400f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :pswitch_2
    const v2, 0x10400f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_3
    const v2, 0x10400f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :pswitch_4
    const v2, 0x10400f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :pswitch_5
    const v2, 0x10400f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 160
    :pswitch_6
    const v2, 0x10400f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    :pswitch_7
    const v2, 0x10400f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 166
    :pswitch_8
    const v2, 0x10400f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_9
    const v2, 0x10400fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    :pswitch_a
    const v2, 0x10400fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :pswitch_b
    const v2, 0x10400fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :pswitch_c
    const v2, 0x10400fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :pswitch_d
    const v2, 0x10400f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getProperName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "index"    # I

    .prologue
    .line 192
    const v1, 0x1070055

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "str":[Ljava/lang/String;
    aget-object v1, v0, p1

    return-object v1
.end method
