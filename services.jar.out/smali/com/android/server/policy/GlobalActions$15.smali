.class Lcom/android/server/policy/GlobalActions$15;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 658
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "camera"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 662
    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 664
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v6

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v0, v9, v8

    .line 666
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 667
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 668
    .local v4, "orient":I
    if-ne v4, v7, :cond_0

    .line 669
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get15()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 670
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get15()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-set3(Z)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_0
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    :cond_1
    move v5, v7

    .line 669
    goto :goto_1

    :cond_2
    move v5, v7

    .line 670
    goto :goto_2

    .line 673
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "orient":I
    :catch_0
    move-exception v3

    .line 660
    :cond_3
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method
