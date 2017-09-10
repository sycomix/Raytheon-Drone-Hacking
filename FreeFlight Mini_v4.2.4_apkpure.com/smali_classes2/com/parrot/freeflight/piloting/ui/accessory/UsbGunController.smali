.class public Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;
.super Ljava/lang/Object;
.source "UsbGunController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# instance fields
.field private mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentState:I

.field private final mGunAccessories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/GunAccessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mGunFireBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGunFireCapBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOpened:Z

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

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentState:I

    .line 38
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getGunAccessories()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunAccessories:Ljava/util/Map;

    .line 40
    const v1, 0x7f0f015b

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mSettingsView:Landroid/view/View;

    .line 42
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040071

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "gunControllerView":Landroid/view/View;
    const v1, 0x7f0f0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    .line 45
    const v1, 0x7f0f0207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    .line 46
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setPivotY(F)V

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)Lcom/parrot/freeflight/core/model/GunAccessory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mOpened:Z

    return v0
.end method

.method private updateButton(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyTheme()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mOpened:Z

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    .line 148
    return-void
.end method

.method public getCommandChoice()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

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
    .line 152
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mOpened:Z

    return v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mOpened:Z

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    .line 142
    return-void
.end method

.method public refreshVisibility()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "Gun"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshVisibility mCurrentGunAccessory="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " settingViewVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->applyTheme()V

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGamePadMode(Z)V
    .locals 0
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 157
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

    .line 69
    if-eqz p2, :cond_1

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    if-eqz v1, :cond_2

    .line 74
    :cond_1
    :goto_0
    return v0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunFireCapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "lastFoundAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    const/4 v0, 0x0

    .line 100
    .local v0, "currentAccessoryFound":Z
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mGunAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/GunAccessory;

    .line 101
    .local v1, "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    if-ne v1, v4, :cond_3

    .line 102
    const/4 v0, 0x1

    .line 108
    .end local v1    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    :cond_0
    if-nez v0, :cond_1

    .line 109
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    .line 110
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->show()V

    .line 116
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    if-eqz v3, :cond_2

    .line 117
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentState:I

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/GunAccessory;->getState()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 118
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentGunAccessory:Lcom/parrot/freeflight/core/model/GunAccessory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/GunAccessory;->getState()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentState:I

    .line 119
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->mCurrentState:I

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->updateButton(I)V

    .line 122
    :cond_2
    return-void

    .line 105
    .restart local v1    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    :cond_3
    move-object v2, v1

    .line 107
    goto :goto_0

    .line 113
    .end local v1    # "gunAccessory":Lcom/parrot/freeflight/core/model/GunAccessory;
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->hide()V

    goto :goto_1
.end method
