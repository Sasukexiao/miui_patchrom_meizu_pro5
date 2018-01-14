.class Landroid/inputmethodservice/InputMethodService$5;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$runnable"    # Ljava/lang/Runnable;
    .param p4, "val$dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$5;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodService$5;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodService$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1729
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$5;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1730
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1728
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1726
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1724
    return-void
.end method
