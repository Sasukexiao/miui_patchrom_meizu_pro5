.class public Lcom/android/internal/util/rr/SBEHeaderColorHelper;
.super Ljava/lang/Object;
.source "SBEHeaderColorHelper.java"


# static fields
.field private static final SYSTEMUI_SECONDARY:I = -0xc7bdb8

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 40
    const-string/jumbo v7, "header_background_color_start"

    .line 39
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 42
    .local v3, "startColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/SBEHeaderColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 44
    const-string/jumbo v7, "header_background_color_center"

    .line 43
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "centerColor":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 47
    const-string/jumbo v7, "header_background_color_end"

    .line 46
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "endColor":I
    invoke-static {p0}, Lcom/android/internal/util/rr/SBEHeaderColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    :goto_1
    new-array v1, v4, [I

    .line 50
    .local v1, "colors":[I
    const/4 v4, 0x0

    aput v3, v1, v4

    .line 51
    invoke-static {p0}, Lcom/android/internal/util/rr/SBEHeaderColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    aput v0, v1, v6

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/rr/SBEHeaderColorHelper;->useBgGradientCenterColor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    aput v2, v1, v5

    .line 55
    return-object v1

    .line 45
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

    .line 49
    goto :goto_1

    .restart local v1    # "colors":[I
    :cond_3
    move v5, v6

    .line 54
    goto :goto_2
.end method

.method public static getBgGradientOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "header_background_gradient_orientation"

    const/16 v2, 0x10e

    .line 28
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static useBgGradientCenterColor(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "header_background_gradient_use_center_color"

    .line 33
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
