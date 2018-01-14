.class public Lcom/android/internal/telephony/m86RIL;
.super Lcom/android/internal/telephony/RIL;
.source "m86RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_REQUEST_GET_WBAMR_CAPABILITY:I = 0x139b

.field private static final RIL_REQUEST_SET_WBAMR_CAPABILITY:I = 0x139a

.field private static final RIL_UNSOL_WB_AMR_REPORT_IND:I = 0x1774


# instance fields
.field private DBG:Z

.field private isWbAmrEnabled:I

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/m86RIL;->isWbAmrEnabled:I

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/m86RIL;->DBG:Z

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/m86RIL;->mQANElements:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/m86RIL;->isWbAmrEnabled:I

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/m86RIL;->DBG:Z

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/m86RIL;->mQANElements:I

    .line 58
    return-void
.end method

.method private dataRegState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 318
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 319
    aget-object v1, v0, v3

    const-string/jumbo v2, "102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 321
    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    .line 323
    :cond_0
    return-object v0
.end method

.method private getWbAmrSupport(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/m86RIL;->setWbAmrCapability(Z)V

    .line 333
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/m86RIL;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WB AMR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private setWbAmr(I)Ljava/lang/Object;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 380
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 381
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "voice_call_wb=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 383
    :cond_1
    if-nez p1, :cond_0

    .line 384
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "setWbAmr(): setting audio parameter - wb_amr=off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/m86RIL;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "voice_call_wb=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getWbAmrCapability()V
    .locals 3

    .prologue
    .line 375
    const/16 v1, 0x139b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 376
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/m86RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 374
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 234
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 235
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .local v1, "error":I
    const/4 v4, 0x0

    .line 240
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v9, p0, Lcom/android/internal/telephony/m86RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v9

    .line 241
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 242
    .local v7, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v8, v5, :cond_1

    .line 243
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_1

    .line 244
    :cond_0
    :try_start_1
    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v8, :sswitch_data_0

    .end local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    monitor-exit v9

    .line 268
    if-nez v4, :cond_3

    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 273
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    return-object v8

    .line 247
    .restart local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_0
    move-object v4, v7

    .line 248
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 251
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_1
    move-object v4, v7

    .line 252
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 254
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_2
    move-object v4, v7

    .line 255
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 256
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    :catch_0
    move-exception v6

    .line 258
    .local v6, "thr":Ljava/lang/Throwable;
    :try_start_2
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2

    .line 259
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 260
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v9

    .line 262
    return-object v7

    .line 240
    .end local v6    # "thr":Ljava/lang/Throwable;
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 277
    .end local v4    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/m86RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 279
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v4, :cond_4

    .line 280
    return-object v4

    .line 283
    :cond_4
    const/4 v3, 0x0

    .line 285
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lez v8, :cond_6

    .line 286
    :cond_5
    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v8, :sswitch_data_1

    .line 291
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unrecognized solicited response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 287
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/m86RIL;->dataRegState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 296
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_6
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/m86RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    const-string/jumbo v9, " "

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9, v3}, Lcom/android/internal/telephony/m86RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLog(Ljava/lang/String;)V

    .line 299
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_7

    .line 300
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 301
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 303
    :cond_7
    return-object v4

    .line 288
    .restart local v3    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/m86RIL;->getWbAmrSupport(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/m86RIL;->isWbAmrEnabled:I

    goto :goto_1

    .line 289
    :sswitch_5
    iget v8, p0, Lcom/android/internal/telephony/m86RIL;->isWbAmrEnabled:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/m86RIL;->setWbAmr(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 244
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x139a -> :sswitch_2
        0x139b -> :sswitch_1
    .end sparse-switch

    .line 286
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_3
        0x139a -> :sswitch_5
        0x139b -> :sswitch_4
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 344
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .local v1, "response":I
    packed-switch v1, :pswitch_data_0

    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 354
    iget-boolean v2, p0, Lcom/android/internal/telephony/m86RIL;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SHRILGET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UNKNOWN UNSL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 358
    return-void

    .line 348
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/m86RIL;->getWbAmrCapability()V

    .line 341
    return-void

    .line 346
    :pswitch_data_0
    .packed-switch 0x1774
        :pswitch_0
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 125
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 127
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_4

    .line 143
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 144
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 145
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 147
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 148
    const-string/jumbo v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 149
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 150
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 148
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLogv(Ljava/lang/String;)V

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 152
    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 151
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLogv(Ljava/lang/String;)V

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 154
    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 153
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLogv(Ljava/lang/String;)V

    .line 160
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 162
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 165
    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 166
    const-string/jumbo v8, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLog(Ljava/lang/String;)V

    .line 124
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    .line 130
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 131
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    .line 134
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 135
    goto/16 :goto_4

    .line 156
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_4
    const-string/jumbo v8, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 168
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 169
    const-string/jumbo v8, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 173
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 175
    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 176
    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_7

    .line 177
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/m86RIL;->riljLog(Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/android/internal/telephony/m86RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 183
    :cond_7
    return-object v4
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 77
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 87
    const/16 v3, 0x8

    .line 89
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 92
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 96
    .restart local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 104
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    .line 190
    .local v2, "gsmSignalStrength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .local v3, "gsmBitErrorRate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 192
    .local v4, "cdmaDbm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 193
    .local v5, "cdmaEcio":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 194
    .local v6, "evdoDbm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 195
    .local v7, "evdoEcio":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 196
    .local v8, "evdoSnr":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 197
    .local v9, "lteSignalStrength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 198
    .local v10, "lteRsrp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 199
    .local v11, "lteRsrq":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 200
    .local v12, "lteRssnr":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 201
    .local v13, "lteCqi":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 203
    .local v14, "tdScdmaRscp":I
    const/4 v15, 0x1

    .line 205
    .local v15, "isGsm":Z
    and-int/lit16 v1, v9, 0xff

    const/16 v16, 0xff

    move/from16 v0, v16

    if-eq v1, v0, :cond_0

    const/16 v1, 0x63

    if-ne v9, v1, :cond_1

    .line 206
    :cond_0
    const/16 v9, 0x63

    .line 207
    const v10, 0x7fffffff

    .line 208
    const v11, 0x7fffffff

    .line 209
    const v12, 0x7fffffff

    .line 210
    const v13, 0x7fffffff

    .line 216
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "gsmSignalStrength:"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v16, " gsmBitErrorRate:"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v16, " cdmaDbm:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v16, " cdmaEcio:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v16, " evdoDbm:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string/jumbo v16, " evdoEcio: "

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string/jumbo v16, " evdoSnr:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string/jumbo v16, " lteSignalStrength:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string/jumbo v16, " lteRsrp:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v16, " lteRsrq:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v16, " lteRssnr:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v16, " lteCqi:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string/jumbo v16, " tdScdmaRscp:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string/jumbo v16, " isGsm:"

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 221
    if-eqz v15, :cond_2

    const-string/jumbo v1, "true"

    .line 216
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/m86RIL;->riljLog(Ljava/lang/String;)V

    .line 223
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct/range {v1 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    return-object v1

    .line 212
    :cond_1
    and-int/lit16 v9, v9, 0xff

    goto/16 :goto_0

    .line 221
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method public setWbAmrCapability(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 363
    const/4 v0, 0x1

    .line 364
    .local v0, "i":I
    const/16 v3, 0x139a

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 365
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v1, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 367
    .local v1, "parcel":Landroid/os/Parcel;
    if-nez p1, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 370
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/m86RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 362
    return-void
.end method
