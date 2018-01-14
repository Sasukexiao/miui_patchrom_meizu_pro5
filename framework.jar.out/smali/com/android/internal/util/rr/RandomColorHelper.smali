.class public Lcom/android/internal/util/rr/RandomColorHelper;
.super Ljava/lang/Object;
.source "RandomColorHelper.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TRANSLUCENT_BLACK:I = 0x7a000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToastIconColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "toast_icon_color"

    const/4 v2, -0x1

    .line 37
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToastIconColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/internal/util/rr/RandomColorHelper;->getToastIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getToastTextColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "toast_text_color"

    const/4 v2, -0x1

    .line 46
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToastTextColorList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/internal/util/rr/RandomColorHelper;->getToastTextColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
