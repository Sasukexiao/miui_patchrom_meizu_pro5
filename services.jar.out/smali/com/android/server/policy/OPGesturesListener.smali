.class public Lcom/android/server/policy/OPGesturesListener;
.super Ljava/lang/Object;
.source "OPGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OPGesturesListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final NUM_POINTER_SCREENSHOT:I = 0x3

.field private static final RECENTS_SWIPE_DISTANCE:I = 0x15e

.field private static final RECENTS_SWIPE_XMAX:I = 0x3e7

.field private static final RECENTS_SWIPE_XMIN:I = 0x352

.field private static final RECENTS_SWIPE_YRES:I = 0x780

.field private static final SWIPE_TIMEOUT_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "OPGestures"

.field private static final THREE_SWIPE_DISTANCE:I = 0x15e

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final GESTURE_THREE_SWIPE_MASK:I

.field private final POINTER_1_MASK:I

.field private final POINTER_2_MASK:I

.field private final POINTER_3_MASK:I

.field private final POINTER_NONE_MASK:I

.field private final mCallbacks:Lcom/android/server/policy/OPGesturesListener$Callbacks;

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mSwipeFireable:Z

.field private mSwipeMask:I

.field public mSwipeRecents:Z

.field public mThreeSwipe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/OPGesturesListener$Callbacks;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/OPGesturesListener$Callbacks;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x20

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/policy/OPGesturesListener;->GESTURE_THREE_SWIPE_MASK:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/OPGesturesListener;->POINTER_1_MASK:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/OPGesturesListener;->POINTER_2_MASK:I

    .line 43
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/OPGesturesListener;->POINTER_3_MASK:I

    .line 44
    iput v2, p0, Lcom/android/server/policy/OPGesturesListener;->POINTER_NONE_MASK:I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointerId:[I

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mDownX:[F

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mDownY:[F

    .line 49
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mDownTime:[J

    .line 51
    iput-boolean v3, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    .line 52
    iput v2, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    .line 54
    iput-boolean v2, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    .line 58
    const-string/jumbo v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/server/policy/OPGesturesListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OPGesturesListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mCallbacks:Lcom/android/server/policy/OPGesturesListener$Callbacks;

    .line 57
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 111
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Lcom/android/server/policy/OPGesturesListener;->findIndex(I)I

    move-result v0

    .line 112
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 115
    .local v1, "pointerCount":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/server/policy/OPGesturesListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v0

    .line 117
    iget-object v3, p0, Lcom/android/server/policy/OPGesturesListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v0

    .line 118
    iget-object v3, p0, Lcom/android/server/policy/OPGesturesListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 122
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    .line 124
    return-void

    .line 126
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    .line 109
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-object p1
.end method

.method private detectSwipe(IJFF)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v6, 0xfa

    .line 155
    iget-object v4, p0, Lcom/android/server/policy/OPGesturesListener;->mDownX:[F

    aget v2, v4, p1

    .line 156
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/server/policy/OPGesturesListener;->mDownY:[F

    aget v3, v4, p1

    .line 157
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/server/policy/OPGesturesListener;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 161
    .local v0, "elapsed":J
    iget-boolean v4, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    if-eqz v4, :cond_0

    const v4, 0x44e9c000    # 1870.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 162
    const v4, 0x44548000    # 850.0f

    cmpl-float v4, p4, v4

    if-ltz v4, :cond_0

    const v4, 0x4479c000    # 999.0f

    cmpg-float v4, p4, v4

    if-gtz v4, :cond_0

    .line 163
    const v4, 0x44c44000    # 1570.0f

    cmpg-float v4, p5, v4

    if-gez v4, :cond_0

    .line 164
    cmp-long v4, v0, v6

    if-gez v4, :cond_0

    .line 165
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    .line 166
    return-void

    .line 170
    :cond_0
    iget v4, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_1

    .line 171
    const/high16 v4, 0x43af0000    # 350.0f

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_1

    .line 172
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 173
    iget v4, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    .line 154
    :cond_1
    return-void
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 145
    .local v7, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 146
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 147
    .local v8, "pointerId":I
    invoke-direct {p0, v8}, Lcom/android/server/policy/OPGesturesListener;->findIndex(I)I

    move-result v1

    .line 148
    .local v1, "i":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/OPGesturesListener;->detectSwipe(IJFF)V

    .line 145
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    .end local v8    # "pointerId":I
    :cond_1
    return-void
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v3, -0x1

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 132
    return v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    if-ne p1, v3, :cond_3

    .line 136
    :cond_2
    return v3

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    aput p1, v1, v2

    .line 139
    iget v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :cond_2
    return-void

    .line 74
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    .line 75
    iput v1, p0, Lcom/android/server/policy/OPGesturesListener;->mDownPointers:I

    .line 76
    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/OPGesturesListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/OPGesturesListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/policy/OPGesturesListener;->detectSwipe(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 89
    :pswitch_4
    iget v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mThreeSwipe:Z

    if-eqz v0, :cond_5

    .line 90
    iput v2, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mCallbacks:Lcom/android/server/policy/OPGesturesListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/OPGesturesListener$Callbacks;->onSwipeThreeFinger()V

    goto :goto_0

    .line 94
    :cond_5
    iget v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeRecents:Z

    if-eqz v0, :cond_1

    .line 95
    iput v2, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeMask:I

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/OPGesturesListener;->mCallbacks:Lcom/android/server/policy/OPGesturesListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/OPGesturesListener$Callbacks;->onSwipeRecents()V

    goto :goto_0

    .line 100
    :pswitch_5
    iput-boolean v1, p0, Lcom/android/server/policy/OPGesturesListener;->mSwipeFireable:Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
