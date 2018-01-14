.class public Lcom/android/internal/util/rr/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBusybox()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/bin/busybox"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/xbin/busybox"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :try_start_0
    const-string/jumbo v1, "busybox mount"

    invoke-static {v1}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->success()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Busybox is there but it is borked! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return v3

    .line 96
    :cond_1
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Busybox not in xbin or bin!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v3

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "NullpointerException thrown while testing busybox"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v3

    .line 108
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static checkSu()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ls /data/app-private"

    invoke-static {v1}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " SU exists and we have permission"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x1

    return v1

    .line 49
    :cond_1
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "su binary does not exist!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v3

    .line 57
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " SU exists but we don\'t have permission"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    return v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "NullPointer throw while looking for su binary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return v3
.end method

.method public static getAvailableIOSchedulers()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "schedulers":[Ljava/lang/String;
    const-string/jumbo v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/android/internal/util/rr/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "aux":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 207
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 208
    .local v2, "schedulers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 209
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 210
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 209
    :goto_1
    aput-object v3, v2, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    aget-object v3, v0, v1

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    .end local v2    # "schedulers":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getIOScheduler()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "scheduler":Ljava/lang/String;
    const-string/jumbo v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/android/internal/util/rr/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "schedulers":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 229
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 230
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "scheduler":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 229
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v1    # "scheduler":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getMount(Ljava/lang/String;)Z
    .locals 10
    .param p0, "mount"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 138
    const-string/jumbo v6, "/system"

    invoke-static {v6}, Lcom/android/internal/util/rr/Helpers;->getMounts(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "mounts":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 140
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 141
    .local v0, "device":Ljava/lang/String;
    aget-object v3, v2, v8

    .line 142
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v4, v2, v6

    .line 143
    .local v4, "point":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mount -o "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",remount -t "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 144
    .local v5, "preferredMountCmd":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/rr/CommandResult;->success()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    return v8

    .line 148
    .end local v0    # "device":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "point":Ljava/lang/String;
    .end local v5    # "preferredMountCmd":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "busybox mount -o remount,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "fallbackMountCmd":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/rr/CommandResult;->success()Z

    move-result v6

    return v6
.end method

.method public static getMounts(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 126
    if-eqz v1, :cond_1

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :cond_1
    :goto_0
    return-object v5

    .line 129
    :catch_0
    move-exception v3

    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_0

    .line 126
    .end local v3    # "ignored":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_3

    .line 128
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v0, v1

    .line 134
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v7

    .line 129
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 123
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 124
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "ignored":Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-object v5, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error reading /proc/mounts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    if-eqz v0, :cond_4

    .line 128
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 129
    :catch_3
    move-exception v3

    goto :goto_2

    .line 121
    .end local v3    # "ignored":Ljava/io/IOException;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 122
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "ignored":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    sget-object v5, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "/proc/mounts does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    if-eqz v0, :cond_4

    .line 128
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 129
    :catch_5
    move-exception v3

    .restart local v3    # "ignored":Ljava/io/IOException;
    goto :goto_2

    .line 125
    .end local v2    # "ignored":Ljava/io/FileNotFoundException;
    .end local v3    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 126
    :goto_5
    if-eqz v0, :cond_5

    .line 128
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 125
    :cond_5
    :goto_6
    throw v5

    .line 129
    :catch_6
    move-exception v3

    .restart local v3    # "ignored":Ljava/io/IOException;
    goto :goto_6

    .line 125
    .end local v3    # "ignored":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 121
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ignored":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 123
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "ignored":Ljava/io/FileNotFoundException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    .restart local v3    # "ignored":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .end local p1    # "def":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 329
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p1    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    move-object p1, v1

    .line 332
    goto :goto_1
.end method

.method public static getTimestamp(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    const-string/jumbo v3, "unknown"

    .line 283
    .local v3, "timestamp":Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 284
    .local v1, "now":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 285
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 286
    .local v2, "timeFormat":Ljava/text/DateFormat;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    :cond_0
    return-object v3
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "state":Z
    if-eqz p0, :cond_0

    .line 75
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 77
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    sget-object v3, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "The device currently has data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    .line 85
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 81
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    sget-object v3, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "The device does not currently have data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 294
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .local v0, "mVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 296
    return v4

    .line 298
    .end local v0    # "mVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "notFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Package could not be found!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return v4

    .line 302
    .end local v1    # "notFound":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "mVersion":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static msgLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_0
    return-void
.end method

.method public static msgShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_0
    return-void
.end method

.method public static readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "useSu"    # Z

    .prologue
    .line 177
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "command":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/rr/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/rr/CMDProcessor;->runShellCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/rr/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 156
    .local v5, "line":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 165
    .local v5, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-object v5

    .line 168
    :catch_0
    move-exception v4

    .local v4, "ignored":Ljava/io/IOException;
    goto :goto_0

    .line 161
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v5, "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 162
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v6, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "IOException while reading system file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/internal/util/rr/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 165
    if-eqz v0, :cond_1

    .line 167
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 163
    :cond_1
    :goto_2
    return-object v6

    .line 168
    :catch_2
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_2

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 159
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "ignored":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-object v6, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "File was not found! trying via shell..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/internal/util/rr/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 165
    if-eqz v0, :cond_2

    .line 167
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 160
    :cond_2
    :goto_4
    return-object v6

    .line 168
    :catch_4
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_4

    .line 164
    .end local v3    # "ignored":Ljava/io/FileNotFoundException;
    .end local v4    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 165
    :goto_5
    if-eqz v0, :cond_3

    .line 167
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 164
    :cond_3
    :goto_6
    throw v6

    .line 168
    :catch_5
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_6

    .line 164
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 158
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    .restart local v3    # "ignored":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ignored":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-static {p0}, Lcom/android/internal/util/rr/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_0
    return-object v1
.end method

.method public static restartSystem()V
    .locals 4

    .prologue
    .line 311
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 312
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to restart"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static restartSystemUI()V
    .locals 1

    .prologue
    .line 306
    const-string/jumbo v0, "pkill -f com.android.systemui"

    invoke-static {v0}, Lcom/android/internal/util/rr/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    .line 305
    return-void
.end method

.method public static sendMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 270
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 271
    invoke-static {p0, p1}, Lcom/android/internal/util/rr/Helpers;->msgLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method public static setSystemProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setprop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/rr/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/android/internal/util/rr/ChildProcess;

    .line 321
    return-void
.end method

.method public static writeOneLine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    if-eqz v3, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 195
    :catch_0
    move-exception v4

    .local v4, "ignored":Ljava/io/IOException;
    goto :goto_0

    .line 187
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 188
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " } to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "Error":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/util/rr/Helpers;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    const/4 v5, 0x0

    .line 192
    if-eqz v2, :cond_1

    .line 194
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :cond_1
    :goto_2
    return v5

    .line 195
    :catch_2
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_2

    .line 191
    .end local v0    # "Error":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 192
    :goto_3
    if-eqz v2, :cond_2

    .line 194
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 191
    :cond_2
    :goto_4
    throw v5

    .line 195
    :catch_3
    move-exception v4

    .restart local v4    # "ignored":Ljava/io/IOException;
    goto :goto_4

    .line 191
    .end local v4    # "ignored":Ljava/io/IOException;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .local v2, "fileWriter":Ljava/io/FileWriter;
    goto :goto_3

    .line 187
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1
.end method
