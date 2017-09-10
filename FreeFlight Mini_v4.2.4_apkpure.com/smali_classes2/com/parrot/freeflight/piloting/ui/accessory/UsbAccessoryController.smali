.class public Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;
.super Ljava/lang/Object;
.source "UsbAccessoryController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# instance fields
.field private final mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-direct {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-direct {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    .line 24
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-direct {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    .line 25
    return-void
.end method


# virtual methods
.method public applyTheme()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->applyTheme()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->applyTheme()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->applyTheme()V

    .line 114
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->close()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->close()V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->close()V

    .line 51
    :cond_2
    return-void
.end method

.method public getCommandChoice()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->isOpened()Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->isOpened()Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->isOpened()Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->open()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->open()V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->open()V

    .line 38
    :cond_2
    return-void
.end method

.method public refreshVisibility()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->refreshVisibility()V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->refreshVisibility()V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->refreshVisibility()V

    .line 101
    return-void
.end method

.method public setGamePadMode(Z)V
    .locals 1
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->setGamePadMode(Z)V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->setGamePadMode(Z)V

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->setGamePadMode(Z)V

    .line 70
    return-void
.end method

.method public shouldChangeVisibility(Landroid/view/View;Z)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    .line 81
    if-eqz p2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v2, p1, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->shouldChangeVisibility(Landroid/view/View;Z)Z

    move-result v0

    .line 83
    .local v0, "change":Z
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v2, p1, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->shouldChangeVisibility(Landroid/view/View;Z)Z

    move-result v2

    and-int/2addr v0, v2

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v2, p1, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->shouldChangeVisibility(Landroid/view/View;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 87
    .end local v0    # "change":Z
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbLightController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->update()V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbClawController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->update()V

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;->mUsbGunController:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->update()V

    .line 77
    return-void
.end method
