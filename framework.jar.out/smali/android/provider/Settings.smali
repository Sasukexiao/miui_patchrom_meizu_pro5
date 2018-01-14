.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$SettingNotFoundException;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Bookmarks;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final ACTION_APP_OPS_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_DETAILS_SETTINGS"

.field public static final ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.action.MANAGE_OVERLAY_PERMISSION"

.field public static final ACTION_MANAGE_WRITE_SETTINGS:Ljava/lang/String; = "android.settings.action.MANAGE_WRITE_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

.field public static final ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "android.settings.SHOW_INPUT_METHOD_PICKER"

.field public static final ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE"

.field public static final ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE"

.field public static final ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final ACTION_ZEN_MODE_AUTOMATION_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS"

.field public static final ACTION_ZEN_MODE_EVENT_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_PRIORITY_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

.field public static final ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final EXTRA_BATTERY_SAVER_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.battery_saver_mode_enabled"

.field public static final EXTRA_DO_NOT_DISTURB_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_enabled"

.field public static final EXTRA_DO_NOT_DISTURB_MODE_MINUTES:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_minutes"

.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final INTENT_CATEGORY_USAGE_ACCESS_CONFIG:Ljava/lang/String; = "android.intent.category.USAGE_ACCESS_CONFIG"

.field private static final JID_RESOURCE_PREFIX:Ljava/lang/String; = "android"

.field private static final LOCAL_LOGV:Z = false

.field public static final METADATA_USAGE_ACCESS_REASON:Ljava/lang/String; = "android.settings.metadata.USAGE_ACCESS_REASON"

.field private static final PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

.field private static final PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

.field private static final PM_WRITE_SETTINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static final mLocationSettingsLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    .line 11950
    new-array v0, v3, [Ljava/lang/String;

    .line 11951
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    aput-object v1, v0, v2

    .line 11950
    sput-object v0, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 11953
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 11954
    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v2

    .line 11955
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    aput-object v1, v0, v3

    .line 11953
    sput-object v0, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    .line 11957
    new-array v0, v3, [Ljava/lang/String;

    .line 11958
    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v1, v0, v2

    .line 11957
    sput-object v0, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDrawOverlays(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1450
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1451
    const/4 v2, 0x0

    .line 1450
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .prologue
    const/4 v6, 0x1

    .line 12008
    const-string/jumbo v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 12010
    return v6

    .line 12014
    :cond_0
    sget-object v5, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    .line 12013
    const/16 v4, 0x17

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 12012
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkAndNoteDrawOverlaysOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .prologue
    .line 12045
    sget-object v5, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    .line 12044
    const/16 v4, 0x18

    .line 12045
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 12043
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .prologue
    .line 11990
    sget-object v5, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 11989
    const/16 v4, 0x17

    .line 11990
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 11988
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGTalkDeviceId(J)Ljava/lang/String;
    .locals 2
    .param p0, "androidId"    # J

    .prologue
    .line 11947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 12117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 12118
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 12119
    return-object v2

    .line 12121
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .prologue
    .line 12028
    sget-object v5, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    .line 12027
    const/16 v4, 0x18

    .line 12028
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 12026
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z
    .param p4, "appOpsOpCode"    # I
    .param p5, "permissions"    # [Ljava/lang/String;
    .param p6, "makeNote"    # Z

    .prologue
    .line 12057
    if-nez p2, :cond_0

    .line 12058
    const/4 v5, 0x0

    return v5

    .line 12061
    :cond_0
    const-string/jumbo v5, "appops"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 12062
    .local v0, "appOpsMgr":Landroid/app/AppOpsManager;
    const/4 v3, 0x3

    .line 12063
    .local v3, "mode":I
    if-eqz p6, :cond_2

    .line 12064
    invoke-virtual {v0, p4, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 12069
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 12087
    :cond_1
    :pswitch_0
    if-nez p3, :cond_4

    .line 12088
    const/4 v5, 0x0

    return v5

    .line 12066
    :cond_2
    invoke-virtual {v0, p4, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 12071
    :pswitch_1
    const/4 v5, 0x1

    return v5

    .line 12077
    :pswitch_2
    const/4 v5, 0x0

    array-length v6, p5

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, p5, v5

    .line 12078
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 12081
    const/4 v5, 0x1

    return v5

    .line 12077
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12093
    .end local v4    # "permission":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12094
    .local v1, "exceptionMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12095
    const-string/jumbo v5, " was not granted "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12096
    array-length v5, p5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    .line 12097
    const-string/jumbo v5, " either of these permissions: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12101
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v5, p5

    if-ge v2, v5, :cond_7

    .line 12102
    aget-object v5, p5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12103
    array-length v5, p5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_6

    const-string/jumbo v5, "."

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12101
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 12099
    .end local v2    # "i":I
    :cond_5
    const-string/jumbo v5, " this permission: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12103
    .restart local v2    # "i":I
    :cond_6
    const-string/jumbo v5, ", "

    goto :goto_4

    .line 12106
    :cond_7
    new-instance v5, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 12069
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .prologue
    .line 11972
    sget-object v5, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 11971
    const/16 v4, 0x17

    .line 11972
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 11970
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
