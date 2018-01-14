.class public Lcom/android/internal/util/rr/QSColorHelper;
.super Ljava/lang/Object;
.source "QSColorHelper.java"


# static fields
.field private static WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/util/rr/QSColorHelper;->WHITE:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundColors(Landroid/content/Context;)[I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v8, -0x1000000

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 58
    const-string/jumbo v7, "qs_background_color_start"

    .line 57
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 61
    .local v3, "startColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/QSColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 63
    const-string/jumbo v7, "qs_background_color_center"

    .line 62
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "centerColor":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 66
    const-string/jumbo v7, "qs_background_color_end"

    .line 65
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, "endColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/QSColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    :goto_1
    new-array v1, v4, [I

    .line 69
    .local v1, "colors":[I
    const/4 v4, 0x0

    aput v3, v1, v4

    .line 70
    invoke-static {p0}, Lcom/android/internal/util/rr/QSColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    aput v0, v1, v6

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/rr/QSColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    aput v2, v1, v5

    .line 79
    return-object v1

    .line 64
    .end local v0    # "centerColor":I
    .end local v1    # "colors":[I
    .end local v2    # "endColor":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "centerColor":I
    goto :goto_0

    .restart local v2    # "endColor":I
    :cond_2
    move v4, v5

    .line 68
    goto :goto_1

    .restart local v1    # "colors":[I
    :cond_3
    move v5, v6

    .line 73
    goto :goto_2
.end method

.method public static getBrightnessSliderColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "qs_brightness_slider_color"

    sget v2, Lcom/android/internal/util/rr/QSColorHelper;->WHITE:I

    .line 29
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBrightnessSliderEmptyColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "qs_brightness_slider_bg_color"

    sget v2, Lcom/android/internal/util/rr/QSColorHelper;->WHITE:I

    .line 41
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getQsBgGradientOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "qs_background_gradient_orientation"

    const/16 v2, 0x10e

    .line 46
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRippleColor(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "qs_ripple_color"

    sget v4, Lcom/android/internal/util/rr/QSColorHelper;->WHITE:I

    .line 34
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, "color":I
    const v2, 0xffffff

    and-int/2addr v2, v0

    const/high16 v3, 0x4a000000    # 2097152.0f

    or-int v1, v3, v2

    .line 37
    .local v1, "colorToUse":I
    return v1
.end method

.method private static useBgGradientCenterColor(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "qs_background_gradient_use_center_color"

    .line 51
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
