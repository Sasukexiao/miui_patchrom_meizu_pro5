.class public Lcom/android/internal/util/rr/ChildProcess;
.super Ljava/lang/Object;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/rr/ChildProcess$ChildReader;,
        Lcom/android/internal/util/rr/ChildProcess$ChildWriter;
    }
.end annotation


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChildProc:Ljava/lang/Process;

.field private mChildStderr:Ljava/lang/StringBuffer;

.field private mChildStderrReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

.field private mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

.field private mChildStdout:Ljava/lang/StringBuffer;

.field private mChildStdoutReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

.field private mEndTime:J

.field private mExitValue:I

.field private mStartTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "childStdin"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/rr/ChildProcess;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->TAG:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mStartTime:J

    .line 86
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    new-instance v1, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

    iget-object v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;-><init>(Lcom/android/internal/util/rr/ChildProcess;Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

    .line 89
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->start()V

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    .line 92
    new-instance v1, Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    iget-object v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;-><init>(Lcom/android/internal/util/rr/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdoutReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    .line 93
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdoutReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->start()V

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    .line 95
    new-instance v1, Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    iget-object v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;-><init>(Lcom/android/internal/util/rr/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderrReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    .line 96
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderrReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public getResult()Lcom/android/internal/util/rr/CommandResult;
    .locals 8

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/util/rr/ChildProcess;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "Child process running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Lcom/android/internal/util/rr/CommandResult;

    .line 143
    iget-wide v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mStartTime:J

    .line 144
    iget v3, p0, Lcom/android/internal/util/rr/ChildProcess;->mExitValue:I

    .line 145
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    iget-object v5, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    iget-wide v6, p0, Lcom/android/internal/util/rr/ChildProcess;->mEndTime:J

    .line 142
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/rr/CommandResult;-><init>(JILjava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public isFinished()Z
    .locals 3

    .prologue
    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "finished":Z
    iget-object v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public waitFinished()I
    .locals 4

    .prologue
    .line 117
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    if-eqz v1, :cond_1

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    iput v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mExitValue:I

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/rr/ChildProcess;->mEndTime:J

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildProc:Ljava/lang/Process;

    .line 122
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderrReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->join()V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStderrReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    .line 124
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdoutReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->join()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdoutReader:Lcom/android/internal/util/rr/ChildProcess$ChildReader;

    .line 126
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->join()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mChildStdinWriter:Lcom/android/internal/util/rr/ChildProcess$ChildWriter;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget v1, p0, Lcom/android/internal/util/rr/ChildProcess;->mExitValue:I

    return v1
.end method
