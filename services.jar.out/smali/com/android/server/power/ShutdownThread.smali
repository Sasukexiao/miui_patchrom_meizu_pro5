.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final OEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/oem/media/shutdownanimation.zip"

.field private static final OEM_SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/oem/media/shutdown.wav"

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static RECOVERY_COMMAND_FILE:Ljava/io/File; = null

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SOFT_REBOOT:Ljava/lang/String; = "soft_reboot"

.field private static final SYSTEMUI_REBOOT:Ljava/lang/String; = "systemui_reboot"

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mRebootWipe:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private shutdownMusicHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get5()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selected"    # I
    .param p2, "advancedReboot"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->handleDialog(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 110
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 117
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery/command"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    .line 120
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    .line 132
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 134
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 135
    const/4 v1, 0x4

    .line 134
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 136
    const/16 v1, 0xd

    .line 134
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 1140
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v14, 0x10302f7

    const/16 v13, 0x11

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 491
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 492
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 493
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v8, "Shutdown sequence already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 494
    return-void

    .line 496
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 500
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 514
    .local v4, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v6, "recovery"

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 515
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 516
    sget-object v6, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 519
    sget-object v7, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 518
    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v7, "wipe"

    .line 518
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 523
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v6, :cond_f

    .line 524
    const v6, 0x104019d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    const v6, 0x104019e

    .line 525
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 527
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 528
    invoke-virtual {v4, v12}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 530
    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 531
    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 555
    :goto_1
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 556
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 557
    const/4 v7, 0x3

    .line 556
    invoke-virtual {v6, v12, v7, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 559
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v6

    if-nez v6, :cond_d

    .line 562
    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 563
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 565
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 567
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-nez v6, :cond_13

    const/4 v3, 0x1

    .line 568
    .local v3, "isPrimary":Z
    :goto_2
    if-eqz v3, :cond_14

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getPowermenuAnimations(Landroid/content/Context;)I

    move-result v5

    .line 570
    .local v5, "powermenuAnimations":I
    :goto_3
    if-nez v5, :cond_2

    .line 573
    :cond_2
    if-ne v5, v11, :cond_3

    .line 574
    const v6, 0x10302f2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 575
    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 577
    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 578
    const v6, 0x10302f3

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 579
    const/16 v6, 0x31

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 581
    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 582
    const v6, 0x10302f4

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 583
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 585
    :cond_5
    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 586
    const v6, 0x10302f8

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 587
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 589
    :cond_6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 590
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 591
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 593
    :cond_7
    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 594
    const v6, 0x10302f6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 595
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 597
    :cond_8
    const/4 v6, 0x7

    if-ne v5, v6, :cond_9

    .line 598
    const v6, 0x10302f5

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 599
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 601
    :cond_9
    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    .line 602
    const v6, 0x10302f9

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 603
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 605
    :cond_a
    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    .line 606
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 607
    const/16 v6, 0x31

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 609
    :cond_b
    const/16 v6, 0xa

    if-ne v5, v6, :cond_c

    .line 610
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 611
    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 614
    :cond_c
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogAlpha(Landroid/content/Context;)F

    move-result v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 616
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogDim(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 617
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v7}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    .line 620
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "isPrimary":Z
    .end local v5    # "powermenuAnimations":I
    :cond_d
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v6, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 621
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v6, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 622
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 625
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 627
    :try_start_3
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 628
    const-string/jumbo v8, "ShutdownThread-cpu"

    const/4 v9, 0x1

    .line 627
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 629
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 630
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 637
    :goto_4
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 638
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 640
    :try_start_4
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 641
    const-string/jumbo v8, "ShutdownThread-screen"

    const/16 v9, 0x1a

    .line 640
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 642
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 643
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 651
    :cond_e
    :goto_5
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v7, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v7}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 653
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 490
    return-void

    .line 491
    .end local v4    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 532
    .restart local v4    # "pd":Landroid/app/ProgressDialog;
    :cond_f
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    if-eqz v6, :cond_10

    .line 534
    const v6, 0x10401a1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 536
    const v6, 0x10401a2

    .line 535
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 539
    :cond_10
    const v6, 0x104002e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    const v6, 0x1040030

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 544
    :cond_11
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_12

    .line 545
    const v6, 0x104002e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    const v6, 0x1040030

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 551
    :goto_6
    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 548
    :cond_12
    const v6, 0x1040199

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 549
    const v6, 0x10401a3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 567
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "isPrimary":Z
    goto/16 :goto_2

    .line 568
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "powermenuAnimations":I
    goto/16 :goto_3

    .line 631
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "isPrimary":Z
    .end local v5    # "powermenuAnimations":I
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 644
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 645
    .restart local v2    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_5

    .line 520
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    .line 1115
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/oem/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1115
    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1115
    if-eqz v0, :cond_1

    .line 1118
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 11
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1095
    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    .line 1097
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1100
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v7, "rebootOrShutdown"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1101
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1093
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1104
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 1105
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Unknown exception hit while trying to invode rebootOrShutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1107
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to find class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1102
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v5

    .line 1103
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string/jumbo v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rebootOrShutdown method not found in class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1109
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 1110
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Unknown exception while trying to invoke rebootOrShutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static doSoftReboot()V
    .locals 4

    .prologue
    .line 397
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 398
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "failure trying to perform soft reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static doSystemUIReboot()V
    .locals 0

    .prologue
    .line 407
    invoke-static {}, Lcom/android/internal/util/rr/Helpers;->restartSystemUI()V

    .line 406
    return-void
.end method

.method private static getPowermenuAnimations(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "power_menu_animations"

    const/4 v2, 0x0

    .line 348
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 450
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "/oem/media/shutdown.wav"

    aput-object v4, v1, v3

    const-string/jumbo v4, "/system/media/shutdown.wav"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 451
    .local v1, "fileName":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 452
    .local v0, "checkFile":Ljava/io/File;
    array-length v4, v1

    .end local v0    # "checkFile":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 453
    .local v2, "music":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "checkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    return-object v2

    .line 452
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "checkFile":Ljava/io/File;
    .end local v2    # "music":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getUiContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "uiContext":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 1169
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1170
    .local v0, "uiContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.type.television"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    const v1, 0x10304cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 1176
    .end local v0    # "uiContext":Landroid/content/Context;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    .line 1173
    .restart local v0    # "uiContext":Landroid/content/Context;
    :cond_1
    const v1, 0x10302ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    .end local v0    # "uiContext":Landroid/content/Context;
    :cond_2
    move-object v0, p0

    .line 1176
    goto :goto_1
.end method

.method private static handleDialog(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selected"    # I
    .param p2, "advancedReboot"    # Z

    .prologue
    .line 370
    if-eqz p2, :cond_2

    .line 372
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    const v2, 0x107000d

    .line 373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "actions":[Ljava/lang/String;
    aget-object v1, v0, p1

    const-string/jumbo v2, "systemui_reboot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    aget-object v1, v0, p1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->doSystemUIReboot()V

    .line 378
    return-void

    .line 380
    :cond_0
    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 381
    aget-object v1, v0, p1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 382
    aget-object v1, v0, p1

    const-string/jumbo v2, "soft_reboot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->doSoftReboot()V

    .line 384
    return-void

    .line 389
    .end local v0    # "actions":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 391
    :cond_2
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method private static isAdvancedRebootPossible(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 179
    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 180
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 181
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 182
    const-string/jumbo v6, "advanced_reboot"

    .line 181
    invoke-static {v5, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_3

    const/4 v0, 0x1

    .line 183
    .local v0, "advancedRebootEnabled":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    .line 185
    .local v1, "isPrimaryUser":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    .end local v1    # "isPrimaryUser":Z
    :cond_1
    return v1

    .line 180
    .end local v0    # "advancedRebootEnabled":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "keyguardLocked":Z
    goto :goto_0

    .line 181
    .end local v2    # "keyguardLocked":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "advancedRebootEnabled":Z
    goto :goto_1

    .line 183
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isPrimaryUser":Z
    goto :goto_2
.end method

.method private static isSilentMode()Z
    .locals 1

    .prologue
    .line 1124
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method private static lockDevice()V
    .locals 4

    .prologue
    .line 463
    const-string/jumbo v2, "window"

    .line 462
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 465
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "boot animation can not lock device!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 442
    .local v0, "uiContext":Landroid/content/Context;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 443
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 444
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 445
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 446
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 440
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 989
    if-eqz p1, :cond_1

    .line 990
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 987
    return-void

    .line 993
    :cond_1
    if-eqz p0, :cond_0

    .line 995
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 997
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1005
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 998
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 478
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 479
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 484
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 485
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 486
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 487
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 477
    return-void
.end method

.method private static setRebootDialogAlpha(Landroid/content/Context;)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 355
    const-string/jumbo v5, "transparent_power_menu"

    const/16 v6, 0x64

    .line 353
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 356
    .local v1, "mRebootDialogAlpha":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v2, v4, v6

    .line 357
    .local v2, "dAlpha":D
    double-to-float v0, v2

    .line 358
    .local v0, "alpha":F
    return v0
.end method

.method private static setRebootDialogDim(Landroid/content/Context;)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 363
    const-string/jumbo v5, "transparent_power_dialog_dim"

    const/16 v6, 0x32

    .line 362
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 364
    .local v3, "mRebootDialogDim":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 365
    .local v0, "dDim":D
    double-to-float v2, v0

    .line 366
    .local v2, "dim":F
    return v2
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    .line 1135
    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "uiContext":Landroid/content/Context;
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 174
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 175
    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 171
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 191
    sget-object v18, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v18

    .line 192
    :try_start_0
    sget-boolean v17, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v17, :cond_0

    .line 193
    const-string/jumbo v17, "ShutdownThread"

    const-string/jumbo v19, "Request to shutdown already running, returning."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 194
    return-void

    :cond_0
    monitor-exit v18

    .line 198
    const/4 v15, 0x0

    .line 201
    .local v15, "showRebootOption":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 202
    const-string/jumbo v18, "power_menu_actions"

    const/16 v19, -0x2

    .line 201
    invoke-static/range {v17 .. v19}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "actions":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 205
    const v18, 0x1070041

    .line 204
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "actionsArray":[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 211
    aget-object v17, v4, v9

    const-string/jumbo v18, "reboot"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 212
    const/4 v15, 0x1

    .line 216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 217
    const v18, 0x10e004f

    .line 216
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 218
    .local v12, "longPressBehavior":I
    sget-boolean v17, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v17, :cond_15

    .line 219
    const v14, 0x10401a7

    .line 223
    .local v14, "resourceId":I
    :goto_2
    if-eqz v15, :cond_2

    sget-boolean v17, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v17, :cond_17

    .line 227
    :cond_2
    :goto_3
    const-string/jumbo v17, "ShutdownThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz p1, :cond_1f

    .line 230
    new-instance v7, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 231
    .local v7, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isAdvancedRebootPossible(Landroid/content/Context;)Z

    move-result v5

    .line 232
    .local v5, "advancedReboot":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 233
    const-string/jumbo v18, "advanced_reboot_oneclick"

    const/16 v19, 0x0

    .line 232
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 233
    const/16 v18, 0x1

    .line 232
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    const/4 v10, 0x1

    .line 234
    .local v10, "instant":Z
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v16

    .line 236
    .local v16, "uiContext":Landroid/content/Context;
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v17, :cond_3

    .line 237
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    const/16 v17, 0x0

    sput-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 240
    :cond_3
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    sget-boolean v17, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v17, :cond_19

    .line 242
    const v17, 0x10401a6

    .line 240
    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 247
    .local v8, "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz v5, :cond_4

    sget-boolean v17, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v17, :cond_1b

    .line 248
    :cond_4
    invoke-virtual {v8, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 264
    :goto_6
    if-nez v10, :cond_5

    .line 266
    new-instance v17, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;Z)V

    .line 265
    const v18, 0x1040013

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const v17, 0x1040009

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    :cond_5
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    sput-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 280
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 281
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 284
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    if-nez v17, :cond_1d

    const/4 v11, 0x1

    .line 285
    .local v11, "isPrimary":Z
    :goto_7
    if-eqz v11, :cond_1e

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->getPowermenuAnimations(Landroid/content/Context;)I

    move-result v13

    .line 287
    .local v13, "powermenuAnimations":I
    :goto_8
    if-nez v13, :cond_6

    .line 290
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7

    .line 291
    const v17, 0x10302f2

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 292
    const/16 v17, 0x51

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 294
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 295
    const v17, 0x10302f3

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 296
    const/16 v17, 0x31

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 298
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v13, v0, :cond_9

    .line 299
    const v17, 0x10302f4

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 300
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 302
    :cond_9
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_a

    .line 303
    const v17, 0x10302f8

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 304
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 306
    :cond_a
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    .line 307
    const v17, 0x10302f7

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 308
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 310
    :cond_b
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v13, v0, :cond_c

    .line 311
    const v17, 0x10302f6

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 312
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    :cond_c
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v13, v0, :cond_d

    .line 315
    const v17, 0x10302f5

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 316
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    :cond_d
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v13, v0, :cond_e

    .line 319
    const v17, 0x10302f9

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 320
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 322
    :cond_e
    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v13, v0, :cond_f

    .line 323
    const v17, 0x10302f7

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 324
    const/16 v17, 0x31

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 326
    :cond_f
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_10

    .line 327
    const v17, 0x10302f7

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 328
    const/16 v17, 0x51

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 331
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 332
    const-string/jumbo v18, "transparent_power_menu"

    const/16 v19, 0x64

    .line 331
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 332
    const/16 v18, 0x64

    .line 331
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 333
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogAlpha(Landroid/content/Context;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 336
    :cond_11
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d9

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 338
    const-string/jumbo v18, "transparent_power_dialog_dim"

    const/16 v19, 0x32

    .line 337
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 338
    const/16 v18, 0x32

    .line 337
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 339
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogDim(Landroid/content/Context;)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setDimAmount(F)V

    .line 341
    :cond_12
    sget-object v17, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 188
    .end local v5    # "advancedReboot":Z
    .end local v6    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v8    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "instant":Z
    .end local v11    # "isPrimary":Z
    .end local v13    # "powermenuAnimations":I
    .end local v16    # "uiContext":Landroid/content/Context;
    :goto_9
    return-void

    .line 191
    .end local v3    # "actions":Ljava/lang/String;
    .end local v4    # "actionsArray":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "longPressBehavior":I
    .end local v14    # "resourceId":I
    .end local v15    # "showRebootOption":Z
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 207
    .restart local v3    # "actions":Ljava/lang/String;
    .restart local v15    # "showRebootOption":Z
    :cond_13
    const-string/jumbo v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "actionsArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 210
    .restart local v9    # "i":I
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 220
    .restart local v12    # "longPressBehavior":I
    :cond_15
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_16

    .line 221
    const v14, 0x10401a5

    .restart local v14    # "resourceId":I
    goto/16 :goto_2

    .line 222
    .end local v14    # "resourceId":I
    :cond_16
    const v14, 0x10401a4

    .restart local v14    # "resourceId":I
    goto/16 :goto_2

    .line 224
    :cond_17
    const v14, 0x104002f

    goto/16 :goto_3

    .line 232
    .restart local v5    # "advancedReboot":Z
    .restart local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_18
    const/4 v10, 0x0

    .restart local v10    # "instant":Z
    goto/16 :goto_4

    .line 243
    .restart local v16    # "uiContext":Landroid/content/Context;
    :cond_19
    if-eqz v15, :cond_1a

    .line 244
    const v17, 0x104002e

    goto/16 :goto_5

    .line 245
    :cond_1a
    const v17, 0x1040199

    goto/16 :goto_5

    .line 250
    .restart local v8    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1b
    if-eqz v10, :cond_1c

    .line 253
    new-instance v17, Lcom/android/server/power/ShutdownThread$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;Z)V

    .line 252
    const v18, 0x107000c

    .line 251
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_6

    .line 260
    :cond_1c
    const v17, 0x107000c

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 259
    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_6

    .line 284
    .restart local v6    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1d
    const/4 v11, 0x0

    .restart local v11    # "isPrimary":Z
    goto/16 :goto_7

    .line 285
    :cond_1e
    const/4 v13, 0x0

    .restart local v13    # "powermenuAnimations":I
    goto/16 :goto_8

    .line 343
    .end local v5    # "advancedReboot":Z
    .end local v6    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v8    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "instant":Z
    .end local v11    # "isPrimary":Z
    .end local v13    # "powermenuAnimations":I
    .end local v16    # "uiContext":Landroid/content/Context;
    :cond_1f
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_9
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    .line 863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 864
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 865
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$8;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 969
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 971
    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 975
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    return-void

    .line 972
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1016
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Calling uncrypt and monitoring the progress..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1019
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    .line 1020
    new-instance v1, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1082
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1085
    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    .line 1089
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for uncrypt."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    return-void

    .line 1086
    :catch_0
    move-exception v2

    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 659
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 656
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 34

    .prologue
    .line 668
    new-instance v6, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 681
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 682
    .local v28, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 690
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 697
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 700
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 699
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 703
    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 704
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .line 706
    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_f

    .line 707
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "delay":J
    :cond_1
    monitor-exit v4

    .line 720
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 721
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 724
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 728
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 730
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_4

    .line 735
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 738
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    .line 740
    check-cast v27, Lcom/android/server/pm/PackageManagerService;

    .line 742
    .local v27, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v27, :cond_5

    .line 743
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 745
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 746
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 749
    :cond_6
    const/16 v29, 0x0

    .line 753
    .local v29, "shutDownFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 754
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->lockDevice()V

    .line 755
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    .line 757
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 758
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v29

    .local v29, "shutDownFile":Ljava/lang/String;
    if-eqz v29, :cond_7

    .line 759
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 764
    .end local v29    # "shutDownFile":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "wait for shutdown music"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v22, v4, v8

    .line 766
    .local v22, "endTimeForMusic":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 767
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_8

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v22, v8

    .line 769
    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_11

    .line 770
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "play shutdown music timeout!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .end local v14    # "delay":J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_9

    .line 779
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "play shutdown music complete."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    monitor-exit v4

    .line 784
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 785
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_a

    .line 786
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 790
    :cond_a
    new-instance v26, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 797
    .local v26, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v4, "unsupported"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 798
    .local v12, "cryptoStatus":Ljava/lang/String;
    const-string/jumbo v2, "encrypted"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    .line 800
    .local v24, "isEncrypted":Z
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_b

    if-eqz v24, :cond_b

    .line 801
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 807
    :cond_b
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v18, v4, v8

    .line 812
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 815
    :try_start_3
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 814
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v25

    .line 816
    .local v25, "mount":Landroid/os/storage/IMountService;
    if-eqz v25, :cond_12

    .line 817
    invoke-interface/range {v25 .. v26}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 824
    .end local v25    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_c

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .line 826
    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_13

    .line 827
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v14    # "delay":J
    :cond_c
    monitor-exit v4

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 667
    return-void

    .line 681
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v12    # "cryptoStatus":Ljava/lang/String;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "endTimeForMusic":J
    .end local v24    # "isEncrypted":Z
    .end local v26    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v27    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v28    # "reason":Ljava/lang/String;
    :cond_d
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 709
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v14    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v28    # "reason":Ljava/lang/String;
    :cond_f
    :try_start_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_10

    .line 710
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    .line 711
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    .line 710
    mul-double v8, v8, v32

    .line 711
    const-wide v32, 0x40c3880000000000L    # 10000.0

    .line 710
    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v30, v0

    .line 712
    .local v30, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 715
    .end local v30    # "status":I
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 716
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 703
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 731
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 774
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v14    # "delay":J
    .restart local v22    # "endTimeForMusic":J
    .restart local v27    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 775
    :catch_2
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4

    .line 766
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 819
    .restart local v12    # "cryptoStatus":Ljava/lang/String;
    .restart local v18    # "endShutTime":J
    .restart local v24    # "isEncrypted":Z
    .restart local v25    # "mount":Landroid/os/storage/IMountService;
    .restart local v26    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_12
    :try_start_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_5

    .line 821
    .end local v25    # "mount":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v16

    .line 822
    .local v16, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_5

    .line 812
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    .line 829
    .restart local v14    # "delay":J
    :cond_13
    :try_start_a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_14

    .line 830
    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    .line 831
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    .line 830
    mul-double v8, v8, v32

    .line 832
    const-wide v32, 0x40d3880000000000L    # 20000.0

    .line 830
    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v30, v0

    .line 833
    .restart local v30    # "status":I
    add-int/lit8 v30, v30, 0x12

    .line 834
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 837
    .end local v30    # "status":I
    :cond_14
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_5

    .line 838
    :catch_4
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5
.end method
