.class public abstract Lcom/parrot/freeflight/home/DeviceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;,
        Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<TT;>;>",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TU;>;"
    }
.end annotation


# instance fields
.field protected final mFoundDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mNoDevice:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    .local p1, "noDeviceItem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mNoDevice:Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mNoDevice:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mNoDevice:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DeviceListAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    .line 99
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract initViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TU;"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/DeviceListAdapter;->onBindViewHolder(Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;I)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    .local p1, "holder":Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;, "TU;"
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "deviceService":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mNoDevice:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TU;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/DeviceListAdapter;->initViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;

    move-result-object v0

    .line 44
    .local v0, "viewHolder":Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;, "TU;"
    iget-object v1, v0, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/home/DeviceListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/home/DeviceListAdapter$1;-><init>(Lcom/parrot/freeflight/home/DeviceListAdapter;Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-object v0
.end method

.method protected onViewHolderClicked(Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;->getAdapterPosition()I

    move-result v1

    .line 72
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "device":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    invoke-interface {v2, v0, v1}, Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;->onDeviceSelected(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerListener(Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    .local p1, "listener":Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;, "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    .line 33
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    .local p1, "listener":Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;, "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    if-ne v0, p1, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mListener:Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;

    .line 39
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 2
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
    .line 82
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter;, "Lcom/parrot/freeflight/home/DeviceListAdapter<TT;TU;>;"
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mNoDevice:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DeviceListAdapter;->notifyDataSetChanged()V

    .line 89
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
