.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4289
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    .line 4274
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4276
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 4279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 4287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 4290
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4291
    :try_start_0
    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 4292
    new-instance v0, Lcom/android/server/am/ActivityStack;

    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->-get4(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 4293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ActivtyContainer{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4289
    return-void

    .line 4290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4426
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v1, p2

    move-object v2, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 4427
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4428
    new-instance v0, Ljava/lang/SecurityException;

    .line 4429
    const-string/jumbo v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    .line 4428
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4425
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 4435
    return-object p0
.end method

.method public attachToDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 4311
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4313
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 4314
    return-void

    .line 4316
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 4310
    return-void

    .line 4311
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .locals 3
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 4301
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4302
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4303
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 4305
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    .line 4306
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->attachStack(II)V

    .line 4298
    return-void
.end method

.method protected detachLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4375
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 4376
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 4377
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4378
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4379
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 4380
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 4372
    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/Point;

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 4454
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 4451
    return-void

    .line 4456
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4452
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDisplayId()I
    .locals 2

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 4324
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 4327
    const/4 v0, -0x1

    return v0

    .line 4322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method public getStackId()I
    .locals 2

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 4333
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 4332
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    .line 4339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4341
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4342
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v2, :cond_0

    .line 4343
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 4344
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    .line 4345
    const/4 v5, 0x0

    .line 4343
    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    return v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4348
    return v4

    .line 4341
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4349
    :catchall_1
    move-exception v2

    .line 4350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4349
    throw v2
.end method

.method isAttachedLocked()Z
    .locals 1

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    .prologue
    .line 4477
    const/4 v0, 0x1

    return v0
.end method

.method onTaskListEmptyLocked()V
    .locals 2

    .prologue
    .line 4481
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 4482
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 4483
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4480
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4356
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4357
    :try_start_0
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v4, :cond_0

    monitor-exit v3

    .line 4358
    return-void

    .line 4360
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 4362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 4364
    .local v0, "origId":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 4365
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4367
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    .line 4355
    return-void

    .line 4366
    :catchall_0
    move-exception v2

    .line 4367
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4366
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4356
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setDrawn()V
    .locals 0

    .prologue
    .line 4472
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 4440
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "ActivityContainer.attachToSurface"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4439
    return-void
.end method

.method setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4463
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 4464
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 4465
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    if-eqz v0, :cond_0

    .line 4466
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x6c

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4462
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 4466
    goto :goto_0
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "ActivityContainer.startActivity"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 4388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v6}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v6

    .line 4389
    const-string/jumbo v9, "ActivityContainer"

    .line 4388
    const/4 v7, 0x0

    .line 4389
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 4387
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 4392
    .local v20, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 4393
    .local v8, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 4394
    .local v23, "data":Landroid/net/Uri;
    if-nez v8, :cond_0

    if-eqz v23, :cond_0

    const-string/jumbo v3, "content"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 4397
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4399
    const/high16 v3, 0x18010000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4401
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v21, p0

    .line 4400
    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v3

    return v3
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 14
    .param p1, "intentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 4407
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "ActivityContainer.startActivityIntentSender"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4409
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v1, :cond_0

    .line 4410
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad PendingIntent object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4413
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v3

    .line 4415
    const-string/jumbo v6, "ActivityContainer"

    .line 4414
    const/4 v4, 0x0

    .line 4415
    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 4413
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "userId":I
    move-object v0, p1

    .line 4417
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 4418
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 4419
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 4418
    invoke-direct {p0, v13, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4421
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4422
    const/high16 v9, 0x18010000

    const/high16 v10, 0x18010000

    const/4 v11, 0x0

    move-object v12, p0

    .line 4421
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_0

    const-string/jumbo v0, "N"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "A"

    goto :goto_0
.end method
