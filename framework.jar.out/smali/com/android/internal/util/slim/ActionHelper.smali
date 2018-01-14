.class public Lcom/android/internal/util/slim/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# static fields
.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v9, -0x1

    .line 105
    .local v9, "resId":I
    const/4 v1, 0x0

    .line 106
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 107
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-nez v8, :cond_0

    .line 108
    const/4 v11, 0x0

    return-object v11

    .line 113
    :cond_0
    :try_start_0
    const-string/jumbo v11, "com.android.systemui"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 119
    .local v10, "systemUiResources":Landroid/content/res/Resources;
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 121
    :try_start_1
    const-string/jumbo v11, ".*?hasExtraIcon="

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "extraIconPath":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 129
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 130
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 144
    .end local v6    # "extraIconPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    const-string/jumbo v11, "system_shortcut="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 146
    const-string/jumbo v11, "system_shortcut="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 145
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 146
    const-string/jumbo v12, "drawable"

    const-string/jumbo v13, "android"

    .line 145
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 147
    if-lez v9, :cond_8

    .line 148
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 114
    .end local v10    # "systemUiResources":Landroid/content/res/Resources;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ButtonsHelper:"

    const-string/jumbo v12, "can\'t access systemui resources"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v11, 0x0

    return-object v11

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "extraIconPath":Ljava/lang/String;
    .restart local v10    # "systemUiResources":Landroid/content/res/Resources;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 125
    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 139
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "extraIconPath":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 140
    .local v5, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v3

    .line 134
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "com.android.systemui:drawable/ic_sysbar_null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 133
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 135
    if-lez v9, :cond_2

    .line 136
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 137
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 150
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v11, "empty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 161
    :cond_5
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 162
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/internal/util/slim/ActionHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    .line 164
    if-lez v9, :cond_8

    .line 165
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 151
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v7    # "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 153
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 155
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 156
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 155
    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 154
    invoke-static {v13}, Lcom/android/internal/util/slim/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 153
    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v11

    .line 158
    :cond_7
    const-string/jumbo v11, "ActionHelper:"

    const-string/jumbo v12, "can\'t access custom icon image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v11, 0x0

    return-object v11

    .line 168
    .end local v7    # "f":Ljava/io/File;
    :cond_8
    return-object v1
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "systemUiResources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 172
    const/4 v0, -0x1

    .line 175
    .local v0, "resId":I
    const-string/jumbo v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_home"

    .line 176
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 178
    :cond_0
    const-string/jumbo v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_back"

    .line 179
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_recent"

    .line 182
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    const-string/jumbo v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    if-eqz v1, :cond_4

    .line 187
    :cond_3
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_search"

    .line 186
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_4
    const-string/jumbo v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_search_light"

    .line 189
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 191
    :cond_5
    const-string/jumbo v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 193
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu"

    .line 192
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 194
    :cond_6
    const-string/jumbo v1, "**menu_big**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_menu_big"

    .line 195
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 197
    :cond_7
    const-string/jumbo v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 199
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_ime_switcher"

    .line 198
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 200
    :cond_8
    const-string/jumbo v1, "**kill**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 202
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_killtask"

    .line 201
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 203
    :cond_9
    const-string/jumbo v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 205
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_power"

    .line 204
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 206
    :cond_a
    const-string/jumbo v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_power_menu"

    .line 207
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 209
    :cond_b
    const-string/jumbo v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 211
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_vib"

    .line 210
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 212
    :cond_c
    const-string/jumbo v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 214
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_silent"

    .line 213
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 215
    :cond_d
    const-string/jumbo v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 217
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_ring_vib_silent"

    .line 216
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 220
    :cond_e
    const-string/jumbo v1, "com.android.systemui:drawable/ic_sysbar_null"

    .line 219
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getLockscreenShortcutConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "lockscreen_shortcuts"

    .line 47
    const/4 v3, -0x2

    .line 44
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, ""

    .line 52
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v4, v4, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getRecentAppSidebarConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {p0}, Lcom/android/internal/util/slim/ActionHelper;->getRecentAppSidebarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentAppSidebarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/internal/util/slim/ActionHelper;->getRecentAppSidebarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getRecentAppSidebarProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "recent_app_sidebar_content"

    .line 82
    const/4 v3, -0x2

    .line 79
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, ""

    .line 86
    :cond_0
    return-object v0
.end method

.method public static setLockscreenShortcutConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/slim/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 59
    const-string/jumbo v0, ""

    .line 63
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "lockscreen_shortcuts"

    .line 63
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    return-void

    .line 61
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setRecentAppSidebarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/slim/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 93
    const-string/jumbo v0, ""

    .line 97
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "recent_app_sidebar_content"

    .line 97
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void

    .line 95
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/slim/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
