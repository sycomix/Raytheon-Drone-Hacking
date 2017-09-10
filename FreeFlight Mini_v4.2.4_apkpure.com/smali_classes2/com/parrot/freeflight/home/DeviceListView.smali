.class public abstract Lcom/parrot/freeflight/home/DeviceListView;
.super Landroid/widget/FrameLayout;
.source "DeviceListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/DeviceListView$SavedState;,
        Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;,
        Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;,
        Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<TT;>;>",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected final mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/home/DeviceListAdapter",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOpened:Z

.field protected final mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/home/DeviceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/home/DeviceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const v1, 0x7f0400a9

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/home/DeviceListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v1, 0x7f0f02a2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 65
    const v1, 0x7f0f0293

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 66
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DeviceListView;->initAdapter()Lcom/parrot/freeflight/home/DeviceListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    new-instance v2, Lcom/parrot/freeflight/home/DeviceListView$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/home/DeviceListView$1;-><init>(Lcom/parrot/freeflight/home/DeviceListView;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/home/DeviceListAdapter;->registerListener(Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;)V

    .line 78
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/DeviceListView;)Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DeviceListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListener:Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DeviceListAdapter;->clear()V

    .line 169
    return-void
.end method

.method protected abstract initAdapter()Lcom/parrot/freeflight/home/DeviceListAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/home/DeviceListAdapter",
            "<TT;TU;>;"
        }
    .end annotation
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    const/4 v2, 0x0

    .line 86
    instance-of v1, p1, Lcom/parrot/freeflight/home/DeviceListView$SavedState;

    if-nez v1, :cond_1

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/parrot/freeflight/home/DeviceListView$SavedState;

    .line 92
    .local v0, "ss":Lcom/parrot/freeflight/home/DeviceListView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DeviceListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 94
    invoke-static {v0}, Lcom/parrot/freeflight/home/DeviceListView$SavedState;->access$100(Lcom/parrot/freeflight/home/DeviceListView$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    .line 95
    iget-boolean v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/DeviceListView;->setVisibility(I)V

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    goto :goto_0

    .line 98
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 108
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 110
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/home/DeviceListView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/home/DeviceListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 112
    .local v0, "ss":Lcom/parrot/freeflight/home/DeviceListView$SavedState;
    iget-boolean v2, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    invoke-static {v0, v2}, Lcom/parrot/freeflight/home/DeviceListView$SavedState;->access$102(Lcom/parrot/freeflight/home/DeviceListView$SavedState;Z)Z

    .line 113
    return-object v0
.end method

.method public setOnAnimationListener(Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;

    .line 161
    return-void
.end method

.method public setOnDeviceClickListener(Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    .local p1, "listener":Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;, "Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListener:Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;

    .line 153
    return-void
.end method

.method public setOnVisibilityChangeListener(Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;

    .line 157
    return-void
.end method

.method public switchVisibility(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    const/high16 v3, -0x3e100000    # -30.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    .line 119
    if-eqz p1, :cond_4

    .line 120
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/DeviceListView;->setAlpha(F)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/home/DeviceListView;->setTranslationY(F)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DeviceListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;->onOpeningAnimationStart()V

    .line 142
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnVisibilityChangeListener:Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 145
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 117
    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DeviceListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/home/DeviceListView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/home/DeviceListView$2;-><init>(Lcom/parrot/freeflight/home/DeviceListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOnAnimationListener:Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;->onClosingAnimationStart()V

    goto :goto_1

    .line 140
    :cond_4
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mOpened:Z

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView;, "Lcom/parrot/freeflight/home/DeviceListView<TT;TU;>;"
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/home/DeviceListAdapter;->update(Ljava/util/List;)V

    .line 165
    return-void
.end method
