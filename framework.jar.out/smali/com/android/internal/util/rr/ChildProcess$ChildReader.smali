.class Lcom/android/internal/util/rr/ChildProcess$ChildReader;
.super Ljava/lang/Thread;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/rr/ChildProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildReader"
.end annotation


# instance fields
.field mBuffer:Ljava/lang/StringBuffer;

.field mStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/android/internal/util/rr/ChildProcess;


# direct methods
.method constructor <init>(Lcom/android/internal/util/rr/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/rr/ChildProcess;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->this$0:Lcom/android/internal/util/rr/ChildProcess;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    .line 22
    iput-object p3, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->mBuffer:Ljava/lang/StringBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 25
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 28
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 29
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 30
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v2    # "len":I
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :goto_1
    return-void

    .line 39
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method
