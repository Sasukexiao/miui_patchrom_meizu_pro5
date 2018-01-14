.class public Lcom/android/internal/util/rr/NotificationColorHelper;
.super Ljava/lang/Object;
.source "NotificationColorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 95
    return v3

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    .line 99
    .local v0, "cu":Lcom/android/internal/util/NotificationColorUtil;
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getIconColorMode(Landroid/content/Context;)I

    move-result v1

    .line 100
    .local v1, "iconColorMode":I
    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    .line 102
    .local v2, "isGreyscale":Z
    if-nez v1, :cond_1

    .line 103
    return v3

    .line 104
    :cond_1
    if-ne v1, v4, :cond_2

    .line 105
    return v2

    .line 107
    :cond_2
    return v4
.end method

.method private static colorizeIconBackground(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getLegacyBgMode(Landroid/content/Context;)I

    move-result v0

    .line 84
    .local v0, "legacyBgMode":I
    if-nez v0, :cond_0

    .line 85
    return v2

    .line 86
    :cond_0
    if-ne v0, v1, :cond_2

    .line 87
    if-nez p1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 89
    :cond_2
    return v1
.end method

.method public static getCustomIconColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "notification_icon_color"

    const/high16 v2, -0x1000000

    .line 142
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getCustomLegacyBgColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "notification_app_icon_bg_color"

    const v2, 0x4dffffff    # 5.3687088E8f

    .line 132
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomNotificationBgColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "notification_bg_color"

    const/4 v2, -0x1

    .line 127
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomTextColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "notification_text_color"

    const/high16 v2, -0x1000000

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/NotificationColorHelper;->colorizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomIconColor(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getIconColorMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "notification_app_icon_color_mode"

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLegacyBgAlpha(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/NotificationColorHelper;->colorizeIconBackground(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomLegacyBgColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    const/16 v0, 0xff

    return v0

    .line 62
    :cond_1
    const/16 v0, 0x4d

    return v0
.end method

.method public static getLegacyBgColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 43
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/NotificationColorHelper;->colorizeIconBackground(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomLegacyBgColor(Landroid/content/Context;)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    return p1

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomNotificationBgColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/rr/ColorHelper;->isColorDark(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    return v1

    .line 51
    :cond_2
    return v2
.end method

.method private static getLegacyBgMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "notification_app_icon_bg_mode"

    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMediaBgMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "notification_media_bg_mode"

    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationMediaBgColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bgColor"    # I

    .prologue
    .line 31
    const v0, -0xbdbdbe

    .line 32
    .local v0, "DEFAULT_MEDIA_BG":I
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getMediaBgMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    return p1

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getMediaBgMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 35
    const v1, -0xbdbdbe

    if-eq p1, v1, :cond_1

    .end local p1    # "bgColor":I
    :goto_0
    return p1

    .line 36
    .restart local p1    # "bgColor":I
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomNotificationBgColor(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomNotificationBgColor(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public static getdividerColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/internal/util/rr/NotificationColorHelper;->getCustomNotificationBgColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/rr/ColorHelper;->isColorDark(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const v0, 0x6f222222

    return v0

    .line 78
    :cond_0
    const v0, 0x6fdddddd

    return v0
.end method
