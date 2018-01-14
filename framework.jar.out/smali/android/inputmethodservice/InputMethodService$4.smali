.class Landroid/inputmethodservice/InputMethodService$4;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "val$dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1713
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$4;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1715
    return-void
.end method
