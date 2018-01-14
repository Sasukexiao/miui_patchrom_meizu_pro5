.class public Lcom/android/internal/util/darkkat/StatusBarColorHelper;
.super Ljava/lang/Object;
.source "StatusBarColorHelper.java"


# static fields
.field private static final TRANSLUCENT_BLACK:I = 0x7a000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAirplaneModeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "status_bar_network_icons_airplane_mode_color"

    .line 55
    const/4 v2, -0x1

    .line 53
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAirplaneModeColorDark(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 60
    const-string/jumbo v2, "status_bar_network_icons_airplane_mode_color_dark_mode"

    .line 61
    const/high16 v3, 0x7a000000

    .line 59
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method

.method public static getNetworkSignalColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "status_bar_network_icons_signal_color"

    const/4 v2, -0x1

    .line 29
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNetworkSignalColorDark(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 35
    const-string/jumbo v2, "status_bar_network_icons_signal_color_dark_mode"

    .line 36
    const/high16 v3, 0x7a000000

    .line 34
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method

.method public static getNoSimColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "status_bar_network_icons_no_sim_color"

    const/4 v2, -0x1

    .line 41
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNoSimColorDark(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "status_bar_network_icons_no_sim_color_dark_mode"

    .line 48
    const/high16 v3, 0x7a000000

    .line 46
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method

.method public static getNotificationIconsColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "status_bar_notification_icons_color"

    .line 81
    const/4 v2, -0x1

    .line 79
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationIconsColorDark(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "status_bar_notification_icons_color_dark_mode"

    .line 87
    const/high16 v3, 0x7a000000

    .line 85
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method

.method public static getStatusIconsColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "status_bar_status_icons_status_color"

    .line 68
    const/4 v2, -0x1

    .line 66
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStatusIconsColorDark(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    const-string/jumbo v2, "status_bar_status_icons_status_color_color_dark_mode"

    .line 74
    const/high16 v3, 0x7a000000

    .line 72
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method
