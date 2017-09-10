.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory;
.super Ljava/lang/Object;
.source "GamePadJoystickParamsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .locals 1
    .param p0, "gamePadType"    # I
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    .line 24
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory;->getTinosJoystickDefaultParams(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v0

    .line 28
    .local v0, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    return-object v0
.end method

.method private static getDefaultJoystickParams()[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    .line 56
    .local v0, "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    const/4 v1, 0x0

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 57
    const/4 v1, 0x1

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 58
    const/4 v1, 0x2

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 59
    const/4 v1, 0x3

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 60
    const/4 v1, 0x4

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 61
    const/4 v1, 0x5

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 62
    const/4 v1, 0x6

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 63
    const/4 v1, 0x7

    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>()V

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v2, v0, v1

    .line 65
    return-object v0
.end method

.method private static getDefaultSelectedParams()[I
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    new-array v0, v3, [I

    .line 72
    .local v0, "joystickSelectedParameters":[I
    aput v1, v0, v1

    .line 73
    aput v2, v0, v2

    .line 74
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 75
    const/4 v1, 0x3

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 77
    return-object v0
.end method

.method private static getTinosJoystickDefaultParams(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    if-eqz p0, :cond_0

    .line 37
    sget-object v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 45
    invoke-static {}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory;->getDefaultJoystickParams()[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    move-result-object v0

    .line 49
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-static {}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory;->getDefaultSelectedParams()[I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;-><init>([Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;[I)V

    return-object v1
.end method
