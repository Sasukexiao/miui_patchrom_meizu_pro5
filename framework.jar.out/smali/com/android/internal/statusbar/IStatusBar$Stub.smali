.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x19

.field static final TRANSACTION_appTransitionPending:I = 0x18

.field static final TRANSACTION_appTransitionStarting_26:I = 0x1b

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1a

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_screenPinningStateChanged:I = 0x20

.field static final TRANSACTION_setAutoRotate:I = 0x1e

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final TRANSACTION_showCustomIntentAfterKeyguard:I = 0x1f

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x1d

.field static final TRANSACTION_toggleKillApp:I = 0x15

.field static final TRANSACTION_toggleLastApp:I = 0x14

.field static final TRANSACTION_toggleOrientationListener:I = 0x17

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_toggleScreenshot:I = 0x16

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 317
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    return v16

    .line 43
    :sswitch_0
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v16, 0x1

    return v16

    .line 48
    :sswitch_1
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_0

    .line 53
    sget-object v16, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 59
    const/16 v16, 0x1

    return v16

    .line 56
    :cond_0
    const/4 v12, 0x0

    .local v12, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 63
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    .line 67
    const/16 v16, 0x1

    return v16

    .line 71
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 76
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 77
    const/16 v16, 0x1

    return v16

    .line 81
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_4
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 83
    const/16 v16, 0x1

    return v16

    .line 87
    :sswitch_5
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    .line 89
    const/16 v16, 0x1

    return v16

    .line 93
    :sswitch_6
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 95
    const/16 v16, 0x1

    return v16

    .line 99
    :sswitch_7
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 104
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    .line 105
    const/16 v16, 0x1

    return v16

    .line 109
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_8
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_1

    const/4 v8, 0x1

    .line 112
    .local v8, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 113
    const/16 v16, 0x1

    return v16

    .line 111
    .end local v8    # "_arg0":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_1

    .line 117
    .end local v8    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 121
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 123
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 125
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_2

    const/4 v15, 0x1

    .line 126
    .local v15, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v14, v15}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 127
    const/16 v16, 0x1

    return v16

    .line 125
    .end local v15    # "_arg3":Z
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "_arg3":Z
    goto :goto_2

    .line 131
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Z
    :sswitch_a
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 136
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 137
    const/16 v16, 0x1

    return v16

    .line 141
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_b
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    .line 143
    const/16 v16, 0x1

    return v16

    .line 147
    :sswitch_c
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    .line 149
    const/16 v16, 0x1

    return v16

    .line 153
    :sswitch_d
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 159
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 160
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    .line 161
    const/16 v16, 0x1

    return v16

    .line 165
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v14    # "_arg2":I
    :sswitch_e
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_3

    const/4 v8, 0x1

    .line 168
    .restart local v8    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 169
    const/16 v16, 0x1

    return v16

    .line 167
    .end local v8    # "_arg0":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_3

    .line 173
    .end local v8    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_4

    const/4 v8, 0x1

    .line 177
    .restart local v8    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_5

    const/4 v13, 0x1

    .line 178
    .local v13, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 179
    const/16 v16, 0x1

    return v16

    .line 175
    .end local v8    # "_arg0":Z
    .end local v13    # "_arg1":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .line 177
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_5

    .line 183
    .end local v8    # "_arg0":Z
    .end local v13    # "_arg1":Z
    :sswitch_10
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 185
    const/16 v16, 0x1

    return v16

    .line 189
    :sswitch_11
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 191
    const/16 v16, 0x1

    return v16

    .line 195
    :sswitch_12
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 197
    const/16 v16, 0x1

    return v16

    .line 201
    :sswitch_13
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    .line 203
    const/16 v16, 0x1

    return v16

    .line 207
    :sswitch_14
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleLastApp()V

    .line 209
    const/16 v16, 0x1

    return v16

    .line 213
    :sswitch_15
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKillApp()V

    .line 215
    const/16 v16, 0x1

    return v16

    .line 219
    :sswitch_16
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleScreenshot()V

    .line 221
    const/16 v16, 0x1

    return v16

    .line 225
    :sswitch_17
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_6

    const/4 v8, 0x1

    .line 228
    .restart local v8    # "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleOrientationListener(Z)V

    .line 229
    const/16 v16, 0x1

    return v16

    .line 227
    .end local v8    # "_arg0":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_6

    .line 233
    .end local v8    # "_arg0":Z
    :sswitch_18
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 235
    const/16 v16, 0x1

    return v16

    .line 239
    :sswitch_19
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 241
    const/16 v16, 0x1

    return v16

    .line 245
    :sswitch_1a
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 249
    const/16 v16, 0x1

    return v16

    .line 253
    .end local v2    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 257
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 258
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 259
    const/16 v16, 0x1

    return v16

    .line 263
    .end local v4    # "_arg0":J
    .end local v10    # "_arg1":J
    :sswitch_1c
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 265
    const/16 v16, 0x1

    return v16

    .line 269
    :sswitch_1d
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_7

    .line 272
    sget-object v16, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 277
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 278
    const/16 v16, 0x1

    return v16

    .line 275
    :cond_7
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 282
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_1e
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_8

    const/4 v8, 0x1

    .line 285
    .restart local v8    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setAutoRotate(Z)V

    .line 286
    const/16 v16, 0x1

    return v16

    .line 284
    .end local v8    # "_arg0":Z
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_8

    .line 290
    .end local v8    # "_arg0":Z
    :sswitch_1f
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_9

    .line 293
    sget-object v16, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 298
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V

    .line 299
    if-eqz v3, :cond_a

    .line 300
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 306
    :goto_a
    const/16 v16, 0x1

    return v16

    .line 296
    :cond_9
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_9

    .line 304
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 310
    :sswitch_20
    const-string/jumbo v16, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_b

    const/4 v8, 0x1

    .line 313
    .restart local v8    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->screenPinningStateChanged(Z)V

    .line 314
    const/16 v16, 0x1

    return v16

    .line 312
    .end local v8    # "_arg0":Z
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_b

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
