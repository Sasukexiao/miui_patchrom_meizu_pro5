.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static mTorchEnabled:Z


# instance fields
.field mActions:Ljava/lang/String;

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeBits:Ljava/util/BitSet;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field mScreenrecordConnection:Landroid/content/ServiceConnection;

.field final mScreenrecordLock:Ljava/lang/Object;

.field final mScreenrecordTimeout:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field private mScreenshotDelay:I

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUiContext:Landroid/content/Context;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotDelay:I

    return v0
.end method

.method static synthetic -get15()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->takeScreenrecord()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->takeScreenshot()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 144
    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 145
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    .line 901
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    .line 902
    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 904
    new-instance v3, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 985
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    .line 986
    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 988
    new-instance v3, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordTimeout:Ljava/lang/Runnable;

    .line 1566
    new-instance v3, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1595
    new-instance v3, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1601
    new-instance v3, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1610
    new-instance v3, Lcom/android/server/policy/GlobalActions$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1622
    new-instance v3, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 164
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 165
    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v3, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 181
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 182
    new-instance v6, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 181
    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    .line 190
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 191
    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 192
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 190
    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 194
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 196
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    const v6, 0x112008d

    .line 196
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->updatePowerMenuActions()V

    .line 161
    return-void

    :cond_0
    move v3, v4

    .line 194
    goto :goto_0

    :cond_1
    move v4, v5

    .line 196
    goto :goto_1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v13, 0x0

    .line 849
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 850
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 851
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 852
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 853
    .local v7, "currentUser":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 854
    const v2, 0x10500a8

    .line 853
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 855
    .local v6, "avatarSize":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 856
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    if-nez v7, :cond_4

    .line 858
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_3

    :goto_1
    const/4 v8, 0x1

    .line 859
    .local v8, "isCurrentUser":Z
    :goto_2
    const/4 v3, 0x0

    .line 860
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 861
    .local v9, "rawAvatar":Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 863
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, -0x2710

    .line 862
    :goto_3
    invoke-static {v1, v13}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 865
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 866
    invoke-static {v9, v6, v6}, Lcom/android/server/policy/GlobalActions;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 865
    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 868
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/server/policy/GlobalActions$21;

    .line 870
    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v4, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 869
    :goto_4
    const v2, 0x10803a8

    move-object v1, p0

    .line 868
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 887
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    if-eqz v8, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 889
    const v2, 0x1040028

    .line 888
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->setStatus(Ljava/lang/CharSequence;)V

    .line 891
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 858
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "isCurrentUser":Z
    goto :goto_2

    .end local v8    # "isCurrentUser":Z
    :cond_4
    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 863
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "isCurrentUser":Z
    .restart local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_5
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_3

    .line 870
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string/jumbo v4, "Primary"

    goto :goto_4

    .line 848
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "avatarSize":I
    .end local v7    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    .end local v11    # "user$iterator":Ljava/util/Iterator;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1662
    const-string/jumbo v3, "airplane_mode_on"

    .line 1663
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1660
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1664
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1666
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1667
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1668
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1669
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1659
    :cond_0
    return-void

    .line 1663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1669
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private checkSettings()V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1068
    const-string/jumbo v1, "screenshot_delay"

    const/4 v2, 0x1

    .line 1067
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotDelay:I

    .line 1066
    return-void
.end method

.method private static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1682
    if-nez p0, :cond_0

    return-object v8

    .line 1684
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1685
    .local v3, "inWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1686
    .local v2, "inHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1687
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1688
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1689
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, p0, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1690
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1691
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1692
    .local v7, "srcRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-direct {v1, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1693
    .local v1, "dstRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1694
    .local v4, "m":Landroid/graphics/Matrix;
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v7, v1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1695
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1696
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1697
    return-object v5
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 15

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_2

    .line 388
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    .line 392
    :goto_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$10;

    .line 393
    const v2, 0x108038f

    .line 394
    const v3, 0x1080391

    .line 395
    const v4, 0x10401b4

    .line 396
    const v5, 0x10401b5

    .line 397
    const v6, 0x10401b6

    move-object v1, p0

    .line 392
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 433
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 438
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "power_menu_onthego_enabled"

    const/4 v2, 0x0

    .line 438
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    .line 440
    .local v13, "showOnTheGo":Z
    if-eqz v13, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 442
    new-instance v1, Lcom/android/server/policy/GlobalActions$11;

    const v2, 0x1080398

    .line 443
    const v3, 0x1040100

    .line 442
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 468
    const v1, 0x1070041

    .line 467
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, "actionsArray":[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 477
    .local v9, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v0, v8

    if-ge v11, v0, :cond_12

    .line 478
    aget-object v7, v8, v11

    .line 479
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 390
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "actionsArray":[Ljava/lang/String;
    .end local v9    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v13    # "showOnTheGo":Z
    :cond_2
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    goto :goto_0

    .line 470
    .restart local v13    # "showOnTheGo":Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "actionsArray":[Ljava/lang/String;
    goto :goto_1

    .line 483
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v9    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    :cond_4
    const-string/jumbo v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    const-string/jumbo v0, "reboot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$RebootAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$RebootAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RebootAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_5
    :goto_4
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 487
    :cond_6
    const-string/jumbo v0, "screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 489
    :cond_7
    const-string/jumbo v0, "screenrecord"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getScreenrecordAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 491
    :cond_8
    const-string/jumbo v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 492
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 493
    :cond_9
    const-string/jumbo v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 494
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 495
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    .line 494
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v0

    .line 494
    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 498
    :cond_a
    const-string/jumbo v0, "torch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 499
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 500
    :cond_b
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 501
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 504
    :cond_c
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 505
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 506
    const-string/jumbo v1, "user"

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    .line 507
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 508
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_4

    .line 510
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 511
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 512
    :cond_e
    const-string/jumbo v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 513
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 514
    :cond_f
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 515
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 516
    :cond_10
    const-string/jumbo v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 517
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 519
    :cond_11
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 525
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_12
    new-instance v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 527
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 528
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 529
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 532
    new-instance v10, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 533
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUiContext()Landroid/content/Context;

    move-result-object v1

    .line 532
    invoke-direct {v10, v0, v1, v12}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 534
    .local v10, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 536
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 537
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 538
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 539
    new-instance v1, Lcom/android/server/policy/GlobalActions$12;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 550
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 552
    invoke-virtual {v10, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 554
    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 766
    new-instance v0, Lcom/android/server/policy/GlobalActions$18;

    const v1, 0x1080325

    .line 767
    const v2, 0x10401b8

    .line 766
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Lcom/android/server/policy/GlobalActions$16;

    const v1, 0x1080393

    .line 689
    const v2, 0x10401ae

    .line 688
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 837
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 810
    new-instance v0, Lcom/android/server/policy/GlobalActions$20;

    const v1, 0x108002f

    .line 811
    const v2, 0x10401ba

    .line 810
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPowermenuAnimations()I
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    const-string/jumbo v1, "power_menu_animations"

    const/4 v2, 0x0

    .line 353
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getScreenrecordAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 638
    new-instance v0, Lcom/android/server/policy/GlobalActions$14;

    const v1, 0x10803a2

    .line 639
    const v2, 0x104001a

    .line 638
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 620
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    const v1, 0x10803a4

    .line 621
    const v2, 0x1040019

    .line 620
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 743
    new-instance v0, Lcom/android/server/policy/GlobalActions$17;

    const v1, 0x10803a5

    .line 744
    const v2, 0x10401b7

    .line 743
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 657
    new-instance v0, Lcom/android/server/policy/GlobalActions$15;

    const v1, 0x10803a7

    .line 658
    const v2, 0x1040101

    .line 657
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getUiContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    .line 376
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    const v1, 0x10302ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUiContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 3

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1644
    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 1643
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1644
    const/4 v1, 0x1

    .line 1643
    if-ne v0, v1, :cond_0

    .line 1645
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1643
    :goto_0
    return-object v0

    .line 1645
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 788
    new-instance v0, Lcom/android/server/policy/GlobalActions$19;

    const v1, 0x10804c6

    .line 789
    const v2, 0x10401b9

    .line 788
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const v5, 0x10302f7

    const/16 v4, 0x11

    .line 284
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkSettings()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 287
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 288
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 289
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v3, "GlobalActions"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-nez v3, :cond_d

    const/4 v1, 0x1

    .line 292
    .local v1, "isPrimary":Z
    :goto_0
    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getPowermenuAnimations()I

    move-result v2

    .line 294
    .local v2, "powermenuAnimations":I
    :goto_1
    if-nez v2, :cond_0

    .line 297
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 298
    const v3, 0x10302f2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 299
    const/16 v3, 0x51

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 301
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 302
    const v3, 0x10302f3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 303
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 305
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 306
    const v3, 0x10302f4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 307
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 309
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 310
    const v3, 0x10302f8

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 311
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 313
    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 314
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 315
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 317
    :cond_5
    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 318
    const v3, 0x10302f6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 319
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 321
    :cond_6
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 322
    const v3, 0x10302f5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 323
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 325
    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 326
    const v3, 0x10302f9

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 327
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 329
    :cond_8
    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 330
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 331
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 333
    :cond_9
    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 334
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 335
    const/16 v3, 0x51

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 338
    :cond_a
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 339
    const-string/jumbo v4, "transparent_power_menu"

    const/16 v5, 0x64

    .line 338
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 339
    const/16 v4, 0x64

    .line 338
    if-eq v3, v4, :cond_b

    .line 340
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setPowerMenuAlpha()F

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 343
    :cond_b
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 345
    const-string/jumbo v4, "transparent_power_dialog_dim"

    .line 344
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_c

    .line 346
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setPowerMenuDialogDim()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 348
    :cond_c
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 349
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 283
    return-void

    .line 291
    .end local v1    # "isPrimary":Z
    .end local v2    # "powermenuAnimations":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "isPrimary":Z
    goto/16 :goto_0

    .line 292
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "powermenuAnimations":I
    goto/16 :goto_1
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 845
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    .line 1652
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1653
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1648
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    .line 1058
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1059
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1060
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1061
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 1062
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1056
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 1073
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1076
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1077
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1076
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1072
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 1075
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    .line 1077
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private setPowerMenuAlpha()F
    .locals 8

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 359
    const-string/jumbo v5, "transparent_power_menu"

    const/16 v6, 0x64

    .line 358
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 360
    .local v1, "mPowerMenuAlpha":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v2, v4, v6

    .line 361
    .local v2, "dAlpha":D
    double-to-float v0, v2

    .line 362
    .local v0, "alpha":F
    return v0
.end method

.method private setPowerMenuDialogDim()F
    .locals 8

    .prologue
    .line 366
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 367
    const-string/jumbo v5, "transparent_power_dialog_dim"

    const/16 v6, 0x32

    .line 366
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 368
    .local v3, "mPowerMenuDialogDim":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 369
    .local v0, "dDim":D
    double-to-float v2, v0

    .line 370
    .local v2, "dim":F
    return v2
.end method

.method private setupAirplaneModeListeners()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 212
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 214
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    .line 215
    .local v2, "listener":Landroid/telephony/PhoneStateListener;
    invoke-virtual {v6, v2, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 217
    .end local v2    # "listener":Landroid/telephony/PhoneStateListener;
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 219
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 221
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    .line 222
    iput-boolean v10, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 223
    new-instance v7, Ljava/util/BitSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 225
    move v0, v1

    .line 226
    .local v0, "finalI":I
    new-instance v5, Lcom/android/server/policy/GlobalActions$9;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {v5, p0, v7, v0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    .line 244
    .local v5, "subListener":Landroid/telephony/PhoneStateListener;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v6, v5, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "finalI":I
    .end local v1    # "i":I
    .end local v5    # "subListener":Landroid/telephony/PhoneStateListener;
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 210
    return-void
.end method

.method private startOnTheGo()V
    .locals 4

    .prologue
    .line 1047
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1048
    const-string/jumbo v3, "com.android.systemui.nameless.onthego.OnTheGoService"

    .line 1047
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1050
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1051
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1046
    return-void
.end method

.method private takeScreenrecord()V
    .locals 8

    .prologue
    .line 1000
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1001
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 1002
    return-void

    .line 1004
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 1005
    const-string/jumbo v5, "com.android.systemui.omni.screenrecord.TakeScreenrecordService"

    .line 1004
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1007
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1008
    new-instance v1, Lcom/android/server/policy/GlobalActions$23;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 1038
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 1039
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 1038
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1040
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 1041
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordTimeout:Ljava/lang/Runnable;

    const-wide/32 v6, 0x1c61a0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 999
    return-void

    .line 1000
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 916
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 917
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 918
    return-void

    .line 920
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 921
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 920
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 923
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 924
    new-instance v1, Lcom/android/server/policy/GlobalActions$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 974
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 975
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 974
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 977
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 915
    return-void

    .line 916
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 1096
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 1094
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1083
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 259
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 260
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 263
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 265
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_0
.end method

.method protected updatePowerMenuActions()V
    .locals 3

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1592
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, -0x2

    .line 1591
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    .line 1589
    return-void
.end method
