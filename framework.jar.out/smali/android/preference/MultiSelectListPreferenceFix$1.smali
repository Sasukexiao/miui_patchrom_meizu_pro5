.class Landroid/preference/MultiSelectListPreferenceFix$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceFix.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreferenceFix;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MultiSelectListPreferenceFix;


# direct methods
.method constructor <init>(Landroid/preference/MultiSelectListPreferenceFix;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MultiSelectListPreferenceFix;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/preference/MultiSelectListPreferenceFix$1;->this$0:Landroid/preference/MultiSelectListPreferenceFix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 66
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_0

    .line 69
    check-cast v2, Landroid/widget/CheckedTextView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_0

    .line 59
    check-cast v2, Landroid/widget/CheckedTextView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
