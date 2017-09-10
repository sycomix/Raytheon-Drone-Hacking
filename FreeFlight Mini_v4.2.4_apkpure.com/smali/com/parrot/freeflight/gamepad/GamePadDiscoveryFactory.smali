.class public Lcom/parrot/freeflight/gamepad/GamePadDiscoveryFactory;
.super Ljava/lang/Object;
.source "GamePadDiscoveryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 10
    new-instance v1, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;-><init>(Landroid/content/Context;)V

    .line 11
    .local v1, "bleGamePadDiscovery":Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;
    new-instance v0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;-><init>(Landroid/content/Context;)V

    .line 13
    .local v0, "androidInputGamePadDiscovery":Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;-><init>([Lcom/parrot/freeflight/gamepad/DiscoveryBase;)V

    return-object v2
.end method
