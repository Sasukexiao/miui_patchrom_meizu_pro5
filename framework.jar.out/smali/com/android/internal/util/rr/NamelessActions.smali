.class public Lcom/android/internal/util/rr/NamelessActions;
.super Ljava/lang/Object;
.source "NamelessActions.java"


# static fields
.field public static final ACTION_ONTHEGO_TOGGLE:Ljava/lang/String; = "action_onthego_toggle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static actionOnTheGoToggle(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 44
    const-string/jumbo v3, "com.android.systemui.rr.onthego.OnTheGoService"

    .line 43
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    return-void

    .line 36
    :cond_1
    const-string/jumbo v0, "action_onthego_toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {p0}, Lcom/android/internal/util/rr/NamelessActions;->actionOnTheGoToggle(Landroid/content/Context;)V

    .line 30
    :cond_2
    return-void
.end method
