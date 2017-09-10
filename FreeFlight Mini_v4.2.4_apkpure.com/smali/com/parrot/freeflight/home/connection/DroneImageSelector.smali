.class public Lcom/parrot/freeflight/home/connection/DroneImageSelector;
.super Ljava/lang/Object;
.source "DroneImageSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 15
    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneImageSelector$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 27
    const v0, 0x7f020163

    .line 30
    .local v0, "resId":I
    :goto_0
    return v0

    .line 17
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f02013a

    .line 18
    .restart local v0    # "resId":I
    goto :goto_0

    .line 20
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f020268

    .line 21
    .restart local v0    # "resId":I
    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMyFlightsImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 37
    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneImageSelector$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    const v0, 0x7f02013c

    .line 54
    .local v0, "resId":I
    :goto_0
    return v0

    .line 39
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f0200a1

    .line 40
    .restart local v0    # "resId":I
    goto :goto_0

    .line 42
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f020272

    .line 43
    .restart local v0    # "resId":I
    goto :goto_0

    .line 47
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f020164

    .line 48
    .restart local v0    # "resId":I
    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
