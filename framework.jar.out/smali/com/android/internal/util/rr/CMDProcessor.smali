.class public final Lcom/android/internal/util/rr/CMDProcessor;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMDProcessor"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static canSU()Z
    .locals 5

    .prologue
    .line 61
    const-string/jumbo v2, "id"

    invoke-static {v2}, Lcom/android/internal/util/rr/CMDProcessor;->runShellCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    .line 62
    .local v1, "r":Lcom/android/internal/util/rr/CommandResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, " ; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->getStderr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, "CMDProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canSU() su["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->getExitValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->success()Z

    move-result v2

    return v2
.end method

.method public static runShellCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/internal/util/rr/CMDProcessor;->startShellCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    move-result-object v0

    .line 42
    .local v0, "proc":Lcom/android/internal/util/rr/ChildProcess;
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->waitFinished()I

    .line 43
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->getResult()Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/internal/util/rr/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    move-result-object v0

    .line 56
    .local v0, "proc":Lcom/android/internal/util/rr/ChildProcess;
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->waitFinished()I

    .line 57
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->getResult()Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static runSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;
    .locals 2
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p1, "childStdin"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    move-result-object v0

    .line 28
    .local v0, "proc":Lcom/android/internal/util/rr/ChildProcess;
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->waitFinished()I

    .line 29
    invoke-virtual {v0}, Lcom/android/internal/util/rr/ChildProcess;->getResult()Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static startShellCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 34
    .local v0, "cmdarray":[Ljava/lang/String;
    const-string/jumbo v1, "sh"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "-c"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 37
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/rr/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    move-result-object v1

    return-object v1
.end method

.method public static startSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 48
    .local v0, "cmdarray":[Ljava/lang/String;
    const-string/jumbo v1, "su"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "-c"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 51
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/rr/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    move-result-object v1

    return-object v1
.end method

.method public static startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;
    .locals 1
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p1, "childStdin"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/android/internal/util/rr/ChildProcess;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/rr/ChildProcess;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
