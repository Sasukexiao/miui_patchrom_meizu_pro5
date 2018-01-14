.class public Lcom/android/internal/util/rr/VolumeDialogColorHelper;
.super Ljava/lang/Object;
.source "VolumeDialogColorHelper.java"


# static fields
.field private static BLACK:I

.field private static MATERIAL_BLUE_GREY:I

.field private static MATERIAL_GREEN:I

.field private static WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, -0x1000000

    sput v0, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->BLACK:I

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->WHITE:I

    .line 29
    const v0, -0xff6978

    sput v0, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_GREEN:I

    .line 30
    const v0, -0xc8b8b1

    sput v0, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_BLUE_GREY:I

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundColors(Landroid/content/Context;)[I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 86
    const-string/jumbo v7, "volume_dialog_background_color_start"

    sget v8, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_BLUE_GREY:I

    .line 85
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "startColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 90
    const-string/jumbo v7, "volume_dialog_background_color_center"

    sget v8, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_BLUE_GREY:I

    .line 89
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "centerColor":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 93
    const-string/jumbo v7, "volume_dialog_background_color_end"

    sget v8, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_BLUE_GREY:I

    .line 92
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, "endColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    :goto_1
    new-array v1, v4, [I

    .line 96
    .local v1, "colors":[I
    const/4 v4, 0x0

    aput v3, v1, v4

    .line 97
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    aput v0, v1, v6

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    aput v2, v1, v5

    .line 101
    return-object v1

    .line 91
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

    .line 95
    goto :goto_1

    .restart local v1    # "colors":[I
    :cond_3
    move v5, v6

    .line 100
    goto :goto_2
.end method

.method public static getBgGradientOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "volume_dialog_background_gradient_orientation"

    const/16 v2, 0x10e

    .line 74
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExpandButtonColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "volume_dialog_expand_button_color"

    sget v2, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_GREEN:I

    .line 33
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIconColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "volume_dialog_icon_color"

    sget v2, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_GREEN:I

    .line 42
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIconColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->getIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getSliderColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "volume_dialog_slider_color"

    sget v2, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_GREEN:I

    .line 60
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSliderColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->getSliderColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getSliderIconColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "volume_dialog_slider_icon_color"

    sget v2, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->MATERIAL_GREEN:I

    .line 51
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSliderIconColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->getSliderIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getSliderInactiveColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "volume_dialog_slider_inactive_color"

    sget v2, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->WHITE:I

    .line 69
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSliderInactiveColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/internal/util/rr/VolumeDialogColorHelper;->getSliderInactiveColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static useBgGradientCenterColor(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 80
    const-string/jumbo v3, "volume_dialog_background_gradient_use_center_color"

    .line 79
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
