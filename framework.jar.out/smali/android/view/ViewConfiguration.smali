.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_MAXIMUM_FLING_VELOCITY:I = 0x3e80

.field public static final DEFAULT_OVERFLING_DISTANCE:I = 0x6

.field public static final DEFAULT_OVERSCROLL_DISTANCE:I = 0x0

.field public static final DEFAULT_SCROLL_FRICTION:F = 0.007f

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0x6

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0xfa

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0xfa

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static MAXIMUM_FLING_VELOCITY:I = 0x0

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static OVERFLING_DISTANCE:I = 0x0

.field private static OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static SCROLL_FRICTION:F = 0.0f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0x5dc

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 185
    const/16 v0, 0x3e80

    sput v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 211
    const v0, 0x3be56042    # 0.007f

    sput v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 222
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 233
    const/4 v0, 0x6

    sput v0, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 274
    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x8

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 283
    const/16 v0, 0xc

    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 284
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 285
    sget v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 286
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 287
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 288
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 289
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 290
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 291
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 293
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 294
    sget v0, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 295
    sget v0, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 297
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 281
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 313
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v19, "animation_controls_no_scroll"

    const/16 v20, 0x0

    .line 312
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 313
    const/16 v20, 0x1

    .line 312
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 314
    const v19, 0x3be56042    # 0.007f

    sput v19, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 315
    const/16 v19, 0x3e80

    sput v19, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 316
    const/16 v19, 0x0

    sput v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 317
    const/16 v19, 0x6

    sput v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    .line 343
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 345
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 346
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 347
    .local v4, "config":Landroid/content/res/Configuration;
    iget v6, v10, Landroid/util/DisplayMetrics;->density:F

    .line 349
    .local v6, "density":F
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 350
    const/high16 v19, 0x3fc00000    # 1.5f

    mul-float v16, v6, v19

    .line 355
    .local v16, "sizeAndDensity":F
    :goto_1
    const/high16 v19, 0x40c00000    # 6.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 356
    const/high16 v19, 0x41400000    # 12.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 357
    const/high16 v19, 0x41200000    # 10.0f

    mul-float v19, v19, v6

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 358
    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 359
    const/high16 v19, 0x41800000    # 16.0f

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 362
    const-string/jumbo v19, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 363
    .local v17, "win":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 364
    .local v7, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 365
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 366
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 368
    sget v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 369
    sget v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 373
    const v19, 0x10e009a

    .line 372
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 375
    .local v5, "configVal":I
    packed-switch v5, :pswitch_data_0

    .line 378
    :pswitch_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v18

    .line 380
    .local v18, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasPermanentMenuKey()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 381
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v5    # "configVal":I
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v19, 0x1120014

    .line 400
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 403
    const v19, 0x105000f

    .line 402
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 409
    const v19, 0x1050010

    .line 408
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 411
    const v19, 0x1050011

    .line 410
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 413
    const v19, 0x10e0092

    .line 412
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 310
    return-void

    .line 320
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v6    # "density":F
    .end local v7    # "display":Landroid/view/Display;
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v15    # "size":Landroid/graphics/Point;
    .end local v16    # "sizeAndDensity":F
    .end local v17    # "win":Landroid/view/WindowManager;
    :cond_1
    const-string/jumbo v19, "custom_scroll_friction"

    const v20, 0x3be56042    # 0.007f

    .line 319
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v19

    sput v19, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 322
    const-string/jumbo v19, "custom_fling_velocity"

    const/16 v20, 0x3e80

    .line 321
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 323
    .local v9, "maximumFlingVelocity":I
    if-nez v9, :cond_3

    .line 324
    const/16 v19, 0x3e80

    sput v19, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    .line 329
    :goto_3
    const-string/jumbo v19, "custom_overscroll_distance"

    const/16 v20, 0x0

    .line 328
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 330
    .local v12, "overScrollDistance":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-le v12, v0, :cond_4

    .line 331
    const/16 v19, 0x0

    sput v19, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    .line 336
    :goto_4
    const-string/jumbo v19, "custom_overfling_distance"

    const/16 v20, 0x6

    .line 335
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 337
    .local v11, "overFlingDistance":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    if-nez v11, :cond_5

    .line 338
    :cond_2
    const/16 v19, 0x6

    sput v19, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    goto/16 :goto_0

    .line 326
    .end local v11    # "overFlingDistance":I
    .end local v12    # "overScrollDistance":I
    :cond_3
    sput v9, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    goto :goto_3

    .line 333
    .restart local v12    # "overScrollDistance":I
    :cond_4
    sput v12, Landroid/view/ViewConfiguration;->OVERSCROLL_DISTANCE:I

    goto :goto_4

    .line 340
    .restart local v11    # "overFlingDistance":I
    :cond_5
    sput v11, Landroid/view/ViewConfiguration;->OVERFLING_DISTANCE:I

    goto/16 :goto_0

    .line 352
    .end local v9    # "maximumFlingVelocity":I
    .end local v11    # "overFlingDistance":I
    .end local v12    # "overScrollDistance":I
    .restart local v4    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "density":F
    .restart local v10    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_6
    move/from16 v16, v6

    .restart local v16    # "sizeAndDensity":F
    goto/16 :goto_1

    .line 382
    .restart local v5    # "configVal":I
    .restart local v7    # "display":Landroid/view/Display;
    .restart local v15    # "size":Landroid/graphics/Point;
    .restart local v17    # "win":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v8

    .line 383
    .local v8, "ex":Landroid/os/RemoteException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto/16 :goto_2

    .line 389
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 390
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_2

    .line 394
    :pswitch_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 395
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_2

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 425
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 427
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 428
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 430
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    :cond_0
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    .prologue
    .line 803
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 552
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 541
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x6

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 774
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 572
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 562
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 532
    const/16 v0, 0xfa

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 514
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 499
    const-string/jumbo v0, "long_press_timeout"

    .line 500
    const/16 v1, 0x1f4

    .line 499
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 725
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 705
    sget v0, Landroid/view/ViewConfiguration;->MAXIMUM_FLING_VELOCITY:I

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 491
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 796
    sget v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 658
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 523
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 670
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 761
    const-wide/16 v0, 0x5dc

    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 820
    iget-object v4, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 821
    const-string/jumbo v5, "navigation_bar_visible"

    .line 820
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    const/4 v2, 0x1

    .line 823
    .local v2, "mHasNavigationBar":Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 824
    const-string/jumbo v5, "enable_hw_keys"

    .line 823
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v1, 0x1

    .line 826
    .local v1, "mHasHwKeysEnabled":Z
    :goto_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 829
    .local v3, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 838
    :goto_2
    :try_start_1
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasPermanentMenuKey()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    return v4

    .line 820
    .end local v1    # "mHasHwKeysEnabled":Z
    .end local v2    # "mHasNavigationBar":Z
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "mHasNavigationBar":Z
    goto :goto_0

    .line 823
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "mHasHwKeysEnabled":Z
    goto :goto_1

    .line 830
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_2
    return v6

    .line 832
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 839
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 840
    .restart local v0    # "ex":Landroid/os/RemoteException;
    return v7
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
