.class public Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;
.super Ljava/lang/Object;
.source "AxisFilterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 11
    .local v0, "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->getSourceType(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    .end local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>(Ljava/lang/String;)V

    .line 15
    .restart local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    goto :goto_0

    .line 17
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    .end local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .restart local v0    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
