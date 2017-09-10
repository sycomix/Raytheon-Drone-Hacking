.class public Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;
.super Ljava/lang/Object;
.source "UsbClawController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# instance fields
.field private final mClawAccessories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/ClawAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mClawSwitchImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClawView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentState:I

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
    .locals 3
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentState:I

    .line 38
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getClawAccessories()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawAccessories:Ljava/util/Map;

    .line 39
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 41
    const v1, 0x7f0f015b

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mSettingsView:Landroid/view/View;

    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04004d

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "clawControllerView":Landroid/view/View;
    const v1, 0x7f0f01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawView:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f0f01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawSwitchImageView:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;)Lcom/parrot/freeflight/core/model/ClawAccessory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    return-object v0
.end method

.method private updateButton(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 115
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawSwitchImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawSwitchImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public applyTheme()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public getCommandChoice()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public refreshVisibility()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->applyTheme()V

    .line 79
    :cond_0
    return-void
.end method

.method public setGamePadMode(Z)V
    .locals 0
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public shouldChangeVisibility(Landroid/view/View;Z)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "lastFoundAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    const/4 v1, 0x0

    .line 90
    .local v1, "currentAccessoryFound":Z
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mClawAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ClawAccessory;

    .line 91
    .local v0, "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-ne v0, v4, :cond_3

    .line 92
    const/4 v1, 0x1

    .line 98
    .end local v0    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_0
    if-nez v1, :cond_1

    .line 99
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    .line 100
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->show()V

    .line 106
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    if-eqz v3, :cond_2

    .line 107
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentState:I

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/ClawAccessory;->getState()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 108
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentClawAccessory:Lcom/parrot/freeflight/core/model/ClawAccessory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/ClawAccessory;->getState()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentState:I

    .line 109
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->mCurrentState:I

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->updateButton(I)V

    .line 112
    :cond_2
    return-void

    .line 95
    .restart local v0    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_3
    move-object v2, v0

    .line 97
    goto :goto_0

    .line 103
    .end local v0    # "clawAccessory":Lcom/parrot/freeflight/core/model/ClawAccessory;
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->hide()V

    goto :goto_1
.end method
