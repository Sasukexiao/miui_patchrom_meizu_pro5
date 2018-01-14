.class public abstract Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;
.super Landroid/os/AsyncTask;
.source "AbstractAsyncSuCMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final FAILURE:Ljava/lang/String;

.field private mMountSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    const-string/jumbo v0, "failed_no_command"

    iput-object v0, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->FAILURE:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "mountSystem"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    const-string/jumbo v0, "failed_no_command"

    iput-object v0, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->FAILURE:Ljava/lang/String;

    .line 36
    iput-boolean p1, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 60
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    const-string/jumbo v2, "failed_no_command"

    return-object v2

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 66
    .local v1, "stdout":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v2, :cond_2

    .line 67
    const-string/jumbo v2, "rw"

    invoke-static {v2}, Lcom/android/internal/util/rr/Helpers;->getMount(Ljava/lang/String;)Z

    .line 71
    :cond_2
    const/4 v0, 0x0

    .end local v1    # "stdout":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-le v2, v0, :cond_6

    .line 73
    aget-object v2, p1, v0

    if-eqz v2, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    :cond_3
    const-string/jumbo v2, "failed_no_command"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-boolean v3, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v3, :cond_4

    .line 83
    const-string/jumbo v3, "ro"

    invoke-static {v3}, Lcom/android/internal/util/rr/Helpers;->getMount(Ljava/lang/String;)Z

    .line 77
    :cond_4
    return-object v2

    .line 74
    :cond_5
    :try_start_1
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/rr/CommandResult;->getStdout()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 71
    .local v1, "stdout":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "stdout":Ljava/lang/String;
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v2, :cond_7

    .line 83
    const-string/jumbo v2, "ro"

    invoke-static {v2}, Lcom/android/internal/util/rr/Helpers;->getMount(Ljava/lang/String;)Z

    .line 86
    :cond_7
    return-object v1

    .line 81
    :catchall_0
    move-exception v2

    .line 82
    iget-boolean v3, p0, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v3, :cond_8

    .line 83
    const-string/jumbo v3, "ro"

    invoke-static {v3}, Lcom/android/internal/util/rr/Helpers;->getMount(Ljava/lang/String;)Z

    .line 81
    :cond_8
    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/util/rr/AbstractAsyncSuCMDProcessor;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onPostExecute(Ljava/lang/String;)V
.end method
