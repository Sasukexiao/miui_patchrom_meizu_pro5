.class public Lcom/android/internal/util/rr/CommandResult;
.super Ljava/lang/Object;
.source "CommandResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEndTime:J

.field private final mExitValue:I

.field private final mStartTime:J

.field private final mStderr:Ljava/lang/String;

.field private final mStdout:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "exitValue"    # I
    .param p4, "stdout"    # Ljava/lang/String;
    .param p5, "stderr"    # Ljava/lang/String;
    .param p6, "endTime"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/util/rr/CommandResult;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/rr/CommandResult;->TAG:Ljava/lang/String;

    .line 26
    iput-wide p1, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    .line 27
    iput p3, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    .line 28
    iput-object p4, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    .line 30
    iput-wide p6, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    .line 32
    iget-object v0, p0, Lcom/android/internal/util/rr/CommandResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Time to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    iget-wide v4, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ns (nanoseconds)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/android/internal/util/rr/CommandResult;->checkForErrors()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "inParcel"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/rr/CommandResult;-><init>(JILjava/lang/String;Ljava/lang/String;J)V

    .line 40
    return-void
.end method

.method private checkForErrors()V
    .locals 9

    .prologue
    .line 74
    iget v7, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    if-nez v7, :cond_1

    .line 75
    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v7, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    const-string/jumbo v8, "chmod: /sys/devices/system/cpu/cpu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 82
    iget-object v7, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    const-string/jumbo v8, ": can\'t create /sys/devices/system/cpu/cpu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 83
    :goto_1
    const-string/jumbo v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "lineEnding":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "errorWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    const-string/jumbo v8, "/aokp/error.txt"

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "errorLogFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 92
    :cond_2
    new-instance v3, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v3, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v3, "errorWriter":Ljava/io/FileWriter;
    if-eqz v6, :cond_4

    .line 95
    .end local v2    # "errorWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v7, "Attempted to write to an offline cpu core (ignore me)."

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 103
    :goto_2
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    if-eqz v3, :cond_0

    .line 109
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    .local v4, "ignored":Ljava/io/IOException;
    goto :goto_0

    .line 80
    .end local v1    # "errorLogFile":Ljava/io/File;
    .end local v3    # "errorWriter":Ljava/io/FileWriter;
    .end local v4    # "ignored":Ljava/io/IOException;
    .end local v5    # "lineEnding":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    .local v6, "skipOfflineCpu":Z
    goto :goto_1

    .line 98
    .end local v6    # "skipOfflineCpu":Z
    .restart local v1    # "errorLogFile":Ljava/io/File;
    .restart local v3    # "errorWriter":Ljava/io/FileWriter;
    .restart local v5    # "lineEnding":Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/util/rr/CommandResult;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " shell error detected!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CommandResult {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/util/rr/CommandResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 104
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 105
    .end local v1    # "errorLogFile":Ljava/io/File;
    .end local v3    # "errorWriter":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/util/rr/CommandResult;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed to write command result to error file"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v2, :cond_0

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto/16 :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 107
    :goto_4
    if-eqz v2, :cond_5

    .line 109
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 106
    :cond_5
    :goto_5
    throw v7

    .line 110
    :catch_3
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_5

    .line 106
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v1    # "errorLogFile":Ljava/io/File;
    .restart local v3    # "errorWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "errorWriter":Ljava/io/FileWriter;
    .local v2, "errorWriter":Ljava/io/FileWriter;
    goto :goto_4

    .line 104
    .end local v1    # "errorLogFile":Ljava/io/File;
    .local v2, "errorWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_0

    return v1

    .line 147
    :cond_0
    instance-of v3, p1, Lcom/android/internal/util/rr/CommandResult;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/android/internal/util/rr/CommandResult;

    .line 151
    .local v0, "that":Lcom/android/internal/util/rr/CommandResult;
    iget-wide v4, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    iget-wide v6, v0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 152
    iget v3, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    iget v4, v0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    if-ne v3, v4, :cond_3

    .line 153
    iget-object v3, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 154
    iget-object v3, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 155
    iget-wide v4, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    iget-wide v6, v0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 151
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 155
    goto :goto_0

    :cond_3
    move v1, v2

    .line 151
    goto :goto_0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    return-wide v0
.end method

.method public getExitValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    return-wide v0
.end method

.method public getStderr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStdout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 161
    iget-wide v4, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    iget-wide v6, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/lit8 v0, v1, 0x0

    .line 162
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    add-int v0, v1, v3

    .line 163
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    iget-wide v4, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    ushr-long/2addr v4, v8

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 166
    return v0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_0
.end method

.method public success()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    iget v1, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CommandResult{, mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-wide v2, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, ", mExitValue="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, ", stdout=\'"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "\'"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, ", stderr=\'"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "\'"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, ", mEndTime="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-wide v2, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const/16 v1, 0x7d

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/util/rr/CommandResult;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget v0, p0, Lcom/android/internal/util/rr/CommandResult;->mExitValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/util/rr/CommandResult;->mStdout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/util/rr/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Lcom/android/internal/util/rr/CommandResult;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    return-void
.end method
