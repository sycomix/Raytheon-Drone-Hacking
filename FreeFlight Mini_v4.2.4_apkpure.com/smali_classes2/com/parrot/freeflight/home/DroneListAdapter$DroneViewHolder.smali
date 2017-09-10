.class public Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;
.super Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
.source "DroneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/DroneListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DroneViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDroneNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNoDronesTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStatusView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 39
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    const v1, 0x7f0f00c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0f0209

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mStatusView:Landroid/view/View;

    .line 42
    const v1, 0x7f0f020c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 45
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 6
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "noDronesDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 50
    if-ne p1, p2, :cond_2

    move v0, v1

    .line 51
    .local v0, "isNoDrones":Z
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v5, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mStatusView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v3, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v4, v2

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v3, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    return-void

    .end local v0    # "isNoDrones":Z
    :cond_2
    move v0, v2

    .line 50
    goto :goto_0

    .restart local v0    # "isNoDrones":Z
    :cond_3
    move v3, v2

    .line 51
    goto :goto_1

    :cond_4
    move v3, v2

    .line 52
    goto :goto_2

    :cond_5
    move v1, v2

    .line 54
    goto :goto_3
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    check-cast p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    check-cast p2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;->update(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    return-void
.end method
