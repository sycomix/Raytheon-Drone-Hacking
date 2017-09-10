.class public Lcom/parrot/freeflight/piloting/ui/accessory/AccessoryFactory;
.super Ljava/lang/Object;
.source "AccessoryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;
    .locals 2
    .param p0, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/accessory/AccessoryFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-direct {v0, p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 18
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    invoke-direct {v0, p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 20
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;

    invoke-direct {v0, p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbAccessoryController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
