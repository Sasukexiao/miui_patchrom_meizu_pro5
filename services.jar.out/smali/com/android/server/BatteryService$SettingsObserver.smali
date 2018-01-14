.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1246
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1245
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1250
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1254
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "battery_fully_charged_notification"

    .line 1253
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1258
    const-string/jumbo v1, "battery_light_enabled"

    .line 1257
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1262
    const-string/jumbo v1, "battery_light_pulse"

    .line 1261
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1265
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    const-string/jumbo v1, "notification_light_brightness_level"

    .line 1266
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1274
    const-string/jumbo v1, "notification_light_multiple_leds_enable"

    .line 1273
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1282
    const-string/jumbo v1, "battery_light_low_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1281
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1285
    const-string/jumbo v1, "battery_light_medium_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1284
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1288
    const-string/jumbo v1, "battery_light_full_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1287
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1291
    const-string/jumbo v1, "battery_light_really_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1290
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1295
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1249
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1298
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1303
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1304
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1306
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1307
    const-string/jumbo v2, "battery_fully_charged_notification"

    .line 1306
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set12(Lcom/android/server/BatteryService;Z)Z

    .line 1310
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1311
    const-string/jumbo v2, "battery_light_enabled"

    .line 1310
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set7(Lcom/android/server/BatteryService;Z)Z

    .line 1314
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1315
    const-string/jumbo v2, "battery_light_pulse"

    .line 1314
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set6(Lcom/android/server/BatteryService;Z)Z

    .line 1318
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1319
    const-string/jumbo v5, "battery_light_low_color"

    .line 1320
    const v6, 0x10e005a

    .line 1319
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1318
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;I)I

    .line 1321
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1322
    const-string/jumbo v5, "battery_light_medium_color"

    .line 1323
    const v6, 0x10e005b

    .line 1322
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1321
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;I)I

    .line 1324
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1325
    const-string/jumbo v5, "battery_light_full_color"

    .line 1326
    const v6, 0x10e005c

    .line 1325
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1324
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;I)I

    .line 1327
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1328
    const-string/jumbo v5, "battery_light_really_full_color"

    .line 1329
    const v6, 0x10e00cd

    .line 1328
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1327
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;I)I

    .line 1332
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1334
    const-string/jumbo v5, "notification_light_brightness_level"

    .line 1335
    const/16 v6, 0xff

    .line 1333
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;I)I

    .line 1339
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1340
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1341
    const-string/jumbo v6, "notification_light_multiple_leds_enable"

    .line 1342
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 1340
    :goto_3
    invoke-static {v1, v6, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    :goto_4
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;Z)Z

    .line 1345
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;)V

    .line 1302
    return-void

    :cond_2
    move v2, v4

    .line 1306
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 1310
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 1314
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 1342
    goto :goto_3

    :cond_6
    move v3, v4

    .line 1340
    goto :goto_4
.end method
