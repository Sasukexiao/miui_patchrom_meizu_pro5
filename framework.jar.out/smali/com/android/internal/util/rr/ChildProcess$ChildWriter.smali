.class Lcom/android/internal/util/rr/ChildProcess$ChildWriter;
.super Ljava/lang/Thread;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/rr/ChildProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildWriter"
.end annotation


# instance fields
.field mBuffer:Ljava/lang/String;

.field mStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/android/internal/util/rr/ChildProcess;


# direct methods
.method constructor <init>(Lcom/android/internal/util/rr/ChildProcess;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/rr/ChildProcess;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "buf"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->this$0:Lcom/android/internal/util/rr/ChildProcess;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    .line 49
    iput-object p3, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->mBuffer:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, "off":I
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 55
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 56
    array-length v4, v0

    sub-int/2addr v4, v3

    const/16 v5, 0x400

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57
    .local v2, "len":I
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v4, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    add-int/2addr v3, v2

    goto :goto_0

    .line 61
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 65
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/util/rr/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_1
    return-void

    .line 67
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method
