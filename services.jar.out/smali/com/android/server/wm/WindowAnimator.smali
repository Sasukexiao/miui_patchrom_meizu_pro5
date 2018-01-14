.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field private final mBlurUiEnabled:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayShowingMedia:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p1, "frameTimeNs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 86
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 89
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 92
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 108
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 121
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    const v1, 0x11200bf

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mBlurUiEnabled:Z

    .line 127
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 119
    return-void
.end method

.method private animateLocked(J)V
    .locals 23
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    const-wide/32 v20, 0xf4240

    div-long v20, p1, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 653
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v17, v0

    .line 655
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 656
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 663
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 664
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 666
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 667
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_6

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 669
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 672
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 674
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 675
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 676
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 695
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 696
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 699
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 700
    .local v4, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v4, :cond_5

    .line 701
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 700
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 678
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 679
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 680
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 684
    if-nez v7, :cond_1

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    .line 687
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 735
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    .line 736
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v19, "WindowAnimator"

    const-string/jumbo v20, "Unhandled exception in Window Manager"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 743
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v11, 0x0

    .line 744
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 745
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_4
    if-ge v8, v14, :cond_c

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 747
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v15

    .line 748
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    if-eqz v19, :cond_3

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 751
    :cond_3
    if-eqz v15, :cond_4

    .line 752
    const/4 v11, 0x1

    .line 745
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 667
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v15    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 705
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v14, :cond_9

    .line 706
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 708
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 710
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 712
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_7

    .line 713
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 716
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->animateBlurLayers()Z

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 721
    if-nez v7, :cond_8

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 705
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 726
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 730
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_3

    .line 737
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    .line 738
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 737
    throw v19

    .line 756
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_c
    const/4 v9, 0x0

    .line 757
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 761
    .end local v9    # "doRequest":Z
    :cond_d
    if-nez v11, :cond_e

    if-eqz v9, :cond_f

    .line 762
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 765
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    if-eqz v17, :cond_10

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 647
    :cond_10
    return-void
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 778
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 779
    const-string/jumbo v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 782
    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 785
    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 788
    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 791
    const-string/jumbo v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    return-object v0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    return-object v0

    .line 114
    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    return-object v0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 876
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    .line 878
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 880
    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v10, 0x80000

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 200
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 201
    .local v2, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 202
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_5

    .line 203
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v2, v9}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v4, 0x0

    .line 205
    .local v4, "showImeOverKeyguard":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 206
    .local v5, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_8

    .line 207
    const/4 v1, 0x0

    .line 211
    :goto_1
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v7, :cond_0

    if-ne v2, p1, :cond_9

    :cond_0
    move v0, v4

    .line 213
    .local v0, "allowWhenLocked":Z
    :goto_2
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_a

    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :goto_3
    or-int/2addr v0, v7

    .line 215
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0xbb6

    if-ne v7, v9, :cond_c

    .line 216
    if-nez v5, :cond_b

    move v7, v8

    .line 215
    :goto_4
    or-int/2addr v0, v7

    .line 219
    if-eqz v1, :cond_2

    .line 220
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v7, :cond_d

    .line 222
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    .line 220
    if-nez v7, :cond_d

    .line 224
    :cond_1
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_e

    move v7, v8

    .line 220
    :goto_5
    or-int/2addr v0, v7

    .line 228
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 229
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_3

    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mBlurUiEnabled:Z

    if-eqz v7, :cond_f

    :cond_3
    const/4 v3, 0x0

    .line 230
    .local v3, "keyguardOn":Z
    :goto_6
    if-eqz v3, :cond_4

    if-eqz v0, :cond_11

    :cond_4
    move v8, v6

    :goto_7
    return v8

    .line 202
    .end local v0    # "allowWhenLocked":Z
    .end local v3    # "keyguardOn":Z
    .end local v4    # "showImeOverKeyguard":Z
    .end local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 203
    .end local v4    # "showImeOverKeyguard":Z
    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 201
    .end local v4    # "showImeOverKeyguard":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 207
    .restart local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v1, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    move v0, v6

    .line 211
    goto :goto_2

    .restart local v0    # "allowWhenLocked":Z
    :cond_a
    move v7, v6

    .line 213
    goto :goto_3

    :cond_b
    move v7, v6

    .line 216
    goto :goto_4

    :cond_c
    move v7, v6

    .line 215
    goto :goto_4

    :cond_d
    move v7, v8

    .line 220
    goto :goto_5

    :cond_e
    move v7, v6

    .line 224
    goto :goto_5

    .line 229
    :cond_f
    const/4 v3, 0x1

    .restart local v3    # "keyguardOn":Z
    goto :goto_6

    .line 228
    .end local v3    # "keyguardOn":Z
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "keyguardOn":Z
    goto :goto_6

    .line 230
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_7
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 604
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 605
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 606
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 607
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 608
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 609
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 610
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 611
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 612
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 613
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_0

    .line 614
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 615
    if-eqz v0, :cond_0

    .line 618
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_1

    .line 619
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 620
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 628
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    .line 627
    const/4 v10, 0x4

    .line 626
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 609
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 632
    :cond_1
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    .line 631
    const/16 v10, 0x8

    .line 630
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 635
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 636
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 606
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 601
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    .line 158
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 159
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    .line 160
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 161
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 162
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 163
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 164
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    .line 165
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 166
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 167
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 168
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 169
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 164
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 170
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    .line 174
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appToken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " done"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 173
    const/4 v12, 0x4

    .line 172
    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_3

    .line 162
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 181
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 182
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 183
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 184
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 185
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 186
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 183
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 188
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exiting appToken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " done"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 190
    const/4 v12, 0x4

    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_5

    .line 159
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 157
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/high16 v10, 0x100000

    .line 535
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 537
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 538
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 540
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .end local v2    # "detachedWallpaper":Lcom/android/server/wm/WindowState;
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 541
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 542
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 543
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v9, :cond_1

    .line 540
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 547
    :cond_1
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 552
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v9, :cond_4

    .line 553
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_3

    .line 554
    and-int v9, v3, v10

    if-eqz v9, :cond_2

    .line 555
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    .line 554
    if-eqz v9, :cond_2

    .line 556
    move-object v2, v6

    .line 558
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 559
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 560
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 561
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_3

    .line 562
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 566
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 572
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 573
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_0

    .line 574
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 573
    if-eqz v9, :cond_0

    .line 575
    and-int v9, v3, v10

    if-eqz v9, :cond_5

    .line 576
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    .line 575
    if-eqz v9, :cond_5

    .line 577
    move-object v2, v6

    .line 580
    :cond_5
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 581
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 583
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_0

    .line 584
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    .line 590
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_7

    .line 594
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 595
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 534
    :cond_7
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 38
    .param p1, "displayId"    # I

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v31

    .line 238
    .local v31, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 239
    const-string/jumbo v33, "lockscreen_see_through"

    const/16 v34, 0x0

    .line 238
    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v20

    .line 241
    .local v20, "seeThrough":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mBlurUiEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 271
    :cond_0
    :goto_0
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 273
    const/16 v26, 0x0

    .line 274
    .local v26, "wallpaperInUnForceHiding":Z
    const/16 v22, 0x0

    .line 275
    .local v22, "startingInUnForceHiding":Z
    const/16 v23, 0x0

    .line 276
    .local v23, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v25, 0x0

    .line 277
    .local v25, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .end local v23    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v25    # "wallpaper":Lcom/android/server/wm/WindowState;
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_2b

    .line 278
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    .line 279
    .local v29, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v30, v0

    .line 280
    .local v30, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    .line 281
    .local v17, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v13

    .line 282
    .local v13, "canBeForceHidden":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v21

    .line 283
    .local v21, "shouldBeForceHidden":Z
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v32, v0

    if-eqz v32, :cond_29

    .line 284
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v27, v0

    .line 285
    .local v27, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v19

    .line 286
    .local v19, "nowAnimating":Z
    move/from16 v0, v19

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 287
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v32, v0

    or-int v32, v32, v19

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 289
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    .line 290
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 291
    :goto_2
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    .line 292
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    move/from16 v28, v0

    .line 293
    :goto_3
    if-nez v10, :cond_12

    move/from16 v7, v19

    .line 294
    :goto_4
    if-nez v28, :cond_13

    move/from16 v8, v27

    .line 297
    :goto_5
    if-eqz v7, :cond_1

    if-eqz v8, :cond_14

    .line 301
    :cond_1
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    .line 302
    :try_start_0
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_2
    :goto_6
    if-eqz v27, :cond_3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 323
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 324
    if-nez v27, :cond_18

    if-eqz v19, :cond_18

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x4

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 330
    const/16 v32, 0x4

    .line 329
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 3"

    .line 333
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    .line 332
    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 342
    :cond_4
    :goto_8
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 343
    if-eqz v19, :cond_19

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    .line 344
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 444
    .end local v19    # "nowAnimating":Z
    .end local v27    # "wasAnimating":Z
    :cond_5
    :goto_9
    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 445
    .local v12, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 446
    if-eqz v12, :cond_6

    iget-boolean v0, v12, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 447
    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 449
    const/16 v32, 0x8

    .line 448
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 5"

    .line 452
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    .line 451
    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 457
    :cond_7
    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 458
    .local v9, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v9, :cond_9

    iget-object v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 459
    iget v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 461
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 463
    :cond_8
    iget v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 464
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 467
    :cond_9
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v32, v0

    if-eqz v32, :cond_a

    .line 468
    move-object/from16 v25, v29

    .line 277
    .end local v9    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    :goto_a
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 242
    .end local v13    # "canBeForceHidden":Z
    .end local v17    # "flags":I
    .end local v18    # "i":I
    .end local v21    # "shouldBeForceHidden":Z
    .end local v22    # "startingInUnForceHiding":Z
    .end local v26    # "wallpaperInUnForceHiding":Z
    .end local v29    # "win":Lcom/android/server/wm/WindowState;
    .end local v30    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_b
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    .restart local v18    # "i":I
    :goto_b
    if-ltz v18, :cond_0

    .line 243
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    .line 244
    .restart local v29    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 242
    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    .line 247
    :cond_c
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v30, v0

    .line 248
    .restart local v30    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0x400

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 249
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 254
    new-instance v32, Landroid/view/animation/AlphaAnimation;

    const/high16 v33, 0x3f800000    # 1.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-direct/range {v32 .. v34}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 255
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    .line 256
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mBlurUiEnabled:Z

    move/from16 v32, v0

    if-nez v32, :cond_d

    if-eqz v20, :cond_e

    :cond_d
    const-wide/16 v32, 0x0

    .line 255
    :goto_c
    move-object/from16 v0, v34

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 258
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 259
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto/16 :goto_0

    .line 256
    :cond_e
    const-wide/16 v32, 0x3e8

    goto :goto_c

    .line 264
    :cond_f
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 265
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_0

    .line 289
    .restart local v13    # "canBeForceHidden":Z
    .restart local v17    # "flags":I
    .restart local v19    # "nowAnimating":Z
    .restart local v21    # "shouldBeForceHidden":Z
    .restart local v22    # "startingInUnForceHiding":Z
    .restart local v26    # "wallpaperInUnForceHiding":Z
    .restart local v27    # "wasAnimating":Z
    :cond_10
    const/4 v10, 0x0

    .local v10, "appWindowAnimating":Z
    goto/16 :goto_2

    .line 291
    .end local v10    # "appWindowAnimating":Z
    :cond_11
    const/16 v28, 0x0

    .local v28, "wasAppWindowAnimating":Z
    goto/16 :goto_3

    .line 293
    .end local v28    # "wasAppWindowAnimating":Z
    :cond_12
    const/4 v7, 0x1

    .local v7, "anyAnimating":Z
    goto/16 :goto_4

    .line 294
    .end local v7    # "anyAnimating":Z
    :cond_13
    const/4 v8, 0x1

    .local v8, "anyWasAnimating":Z
    goto/16 :goto_5

    .line 298
    .end local v8    # "anyWasAnimating":Z
    :cond_14
    :try_start_1
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    move/from16 v32, v0

    if-eqz v32, :cond_15

    const/16 v32, -0x1

    :goto_d
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 304
    :catch_0
    move-exception v15

    .line 305
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v32, "WindowAnimator"

    const-string/jumbo v33, "Failed to dispatch window animation state change."

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 299
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_15
    :try_start_2
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v32, v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v32, :cond_16

    const/16 v32, 0x1

    goto :goto_d

    .line 300
    :cond_16
    const/16 v32, 0x0

    goto :goto_d

    .line 313
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 315
    const/16 v32, 0x0

    .line 316
    const/16 v33, 0x4

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 2"

    .line 319
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    .line 318
    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 336
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    if-nez v19, :cond_4

    .line 338
    const-string/jumbo v32, "WindowAnimator"

    const-string/jumbo v33, "Timeout waiting for animation to startup"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 340
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_8

    .line 346
    :cond_19
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v32

    if-eqz v32, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mBlurUiEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    if-eqz v20, :cond_1b

    .line 347
    :cond_1a
    const/16 v32, 0x0

    .line 346
    :goto_e
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_9

    .line 347
    :cond_1b
    const/16 v32, 0x1

    goto :goto_e

    .line 359
    :cond_1c
    if-eqz v13, :cond_5

    .line 360
    if-eqz v21, :cond_1e

    .line 361
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 422
    :cond_1d
    :goto_f
    const/high16 v32, 0x100000

    and-int v32, v32, v17

    if-eqz v32, :cond_5

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 424
    const/16 v32, 0x0

    .line 425
    const/16 v33, 0x4

    .line 424
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 4"

    .line 428
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    .line 427
    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 368
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v32

    if-eqz v32, :cond_21

    .line 368
    :cond_1f
    const/4 v11, 0x0

    .line 378
    .local v11, "applyExistingExitAnimation":Z
    :goto_10
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v32

    if-nez v32, :cond_20

    if-eqz v11, :cond_a

    .line 381
    :cond_20
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v24

    .line 382
    .local v24, "visibleNow":Z
    if-nez v24, :cond_23

    .line 384
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_a

    .line 370
    .end local v11    # "applyExistingExitAnimation":Z
    .end local v24    # "visibleNow":Z
    :cond_21
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_1f

    .line 371
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v32

    .line 368
    if-eqz v32, :cond_1f

    .line 372
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-nez v32, :cond_1f

    .line 373
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-nez v32, :cond_1f

    .line 374
    if-nez p1, :cond_22

    const/4 v11, 0x1

    .restart local v11    # "applyExistingExitAnimation":Z
    goto :goto_10

    .end local v11    # "applyExistingExitAnimation":Z
    :cond_22
    const/4 v11, 0x0

    .restart local v11    # "applyExistingExitAnimation":Z
    goto :goto_10

    .line 389
    .restart local v24    # "visibleNow":Z
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x4

    if-eqz v32, :cond_28

    .line 390
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-nez v32, :cond_28

    .line 391
    if-nez v23, :cond_24

    .line 392
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 394
    :cond_24
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const/high16 v32, 0x100000

    and-int v32, v32, v17

    if-eqz v32, :cond_25

    .line 396
    const/16 v26, 0x1

    .line 398
    :cond_25
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_26

    .line 399
    const/16 v22, 0x1

    .line 412
    :cond_26
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 413
    .local v14, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_27

    iget v0, v14, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 419
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_f

    .line 401
    .end local v14    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_28
    if-eqz v11, :cond_26

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v33, v0

    const/16 v34, 0x0

    .line 407
    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 409
    .local v6, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 410
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto :goto_11

    .line 436
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "applyExistingExitAnimation":Z
    .end local v19    # "nowAnimating":Z
    .end local v24    # "visibleNow":Z
    .end local v27    # "wasAnimating":Z
    :cond_29
    if-eqz v13, :cond_5

    .line 437
    if-eqz v21, :cond_2a

    .line 438
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_9

    .line 440
    :cond_2a
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_9

    .line 475
    .end local v13    # "canBeForceHidden":Z
    .end local v17    # "flags":I
    .end local v21    # "shouldBeForceHidden":Z
    .end local v29    # "win":Lcom/android/server/wm/WindowState;
    .end local v30    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2b
    if-eqz v23, :cond_31

    .line 476
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v32, v0

    if-nez v32, :cond_2f

    .line 477
    const/16 v16, 0x1

    .line 478
    .local v16, "first":Z
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v18, v32, -0x1

    :goto_12
    if-ltz v18, :cond_30

    .line 479
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowStateAnimator;

    .line 480
    .restart local v30    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v33, v0

    .line 481
    if-eqz v26, :cond_2c

    if-eqz v22, :cond_2e

    :cond_2c
    const/16 v32, 0x0

    .line 482
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v34, v0

    .line 480
    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 483
    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_2d

    .line 486
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 487
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 488
    if-eqz v16, :cond_2d

    .line 489
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 491
    const/16 v16, 0x0

    .line 478
    :cond_2d
    add-int/lit8 v18, v18, -0x1

    goto :goto_12

    .line 481
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_2e
    const/16 v32, 0x1

    goto :goto_13

    .line 495
    .end local v16    # "first":Z
    .end local v30    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_30

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 497
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 502
    :cond_30
    if-nez v26, :cond_31

    if-eqz v25, :cond_31

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v32, v0

    if-eqz v32, :cond_33

    .line 513
    :cond_31
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    if-eqz v32, :cond_32

    .line 515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_34

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v36

    .line 516
    add-long v34, v34, v36

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v36

    .line 516
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 519
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 233
    :cond_32
    :goto_15
    return-void

    .line 505
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    .line 506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayShowingMedia:Z

    move/from16 v34, v0

    .line 505
    invoke-interface/range {v32 .. v34}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 507
    .restart local v6    # "a":Landroid/view/animation/Animation;
    if-eqz v6, :cond_31

    .line 508
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_14

    .line 524
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v32

    if-nez v32, :cond_35

    .line 525
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v34

    sub-long v32, v32, v34

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v34

    .line 525
    cmp-long v32, v32, v34

    if-lez v32, :cond_32

    .line 529
    :cond_35
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_15
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 137
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 800
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 801
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string/jumbo v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 806
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 807
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 808
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 809
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 810
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 811
    const-string/jumbo v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 808
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 813
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 814
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 819
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    :cond_2
    if-eqz p3, :cond_1

    .line 817
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 822
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 824
    if-eqz p3, :cond_4

    .line 825
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 827
    const-string/jumbo v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 832
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 837
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 838
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 796
    :cond_6
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 843
    if-gez p1, :cond_0

    .line 844
    return v1

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 847
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    return v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 890
    if-gez p1, :cond_0

    .line 891
    const/4 v0, 0x0

    return-object v0

    .line 893
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 147
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 150
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 145
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 4
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 862
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 863
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 864
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    .line 865
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 867
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 861
    :cond_0
    return-void

    .line 863
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 851
    if-gez p1, :cond_0

    .line 852
    return-void

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 855
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 856
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 850
    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 884
    if-ltz p1, :cond_0

    .line 885
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 883
    :cond_0
    return-void
.end method
