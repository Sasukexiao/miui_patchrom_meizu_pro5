.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$advancedReboot:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$advancedReboot"    # Z

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/power/ShutdownThread$3;->val$advancedReboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 270
    .local v0, "reasonsList":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 271
    .local v1, "selected":I
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$advancedReboot:Z

    invoke-static {v2, v1, v3}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;IZ)V

    .line 268
    return-void
.end method