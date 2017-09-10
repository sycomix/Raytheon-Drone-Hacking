.class public Lcom/parrot/freeflight/settings/SettingsEntryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SettingsEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<**TT;TU;>;>;>;"
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x32

.field private static final DURATION:I = 0x12c


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEnterCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastPosition:I

.field private mNeedToSelectFirstItem:Z

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSettingsEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation
.end field

.field private final mViewHolderFactory:Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
            "<TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
            "<TT;TU;>;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    .local p2, "viewHolderFactory":Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;, "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory<TT;TU;>;"
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mNeedToSelectFirstItem:Z

    .line 34
    iput v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mEnterCount:I

    .line 35
    iput v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mLastPosition:I

    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mViewHolderFactory:Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;

    .line 42
    iput-object p3, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 43
    return-void
.end method

.method private startSlideAnimation(Landroid/view/View;J)V
    .locals 4
    .param p1, "viewToAnimate"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # J

    .prologue
    .line 88
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mSettingsEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsEntry;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->getValueType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->onBindViewHolder(Lcom/parrot/freeflight/settings/view/SettingsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/settings/view/SettingsViewHolder;I)V
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    .local p1, "holder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/SettingsViewHolder<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    const/4 v3, 0x0

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsEntry;

    .line 68
    .local v0, "settingsEntry":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;"
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 69
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 70
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 71
    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mNeedToSelectFirstItem:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 72
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 73
    iput-boolean v3, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mNeedToSelectFirstItem:Z

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->update(Ljava/lang/Object;)V

    .line 76
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00cf

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mEnterCount:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mLastPosition:I

    if-ge v1, p2, :cond_1

    .line 83
    iput p2, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mLastPosition:I

    .line 85
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v1, p1, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00ce

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mViewHolderFactory:Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setSettingsEntries(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fromGamePad"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsEntryAdapter;, "Lcom/parrot/freeflight/settings/SettingsEntryAdapter<TT;TU;>;"
    .local p1, "settingEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mSettingsEntries:Ljava/util/List;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mLastPosition:I

    .line 101
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mEnterCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mEnterCount:I

    .line 102
    if-eqz p2, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->mNeedToSelectFirstItem:Z

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
