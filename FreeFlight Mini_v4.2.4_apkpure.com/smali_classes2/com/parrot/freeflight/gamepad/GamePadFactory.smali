.class public Lcom/parrot/freeflight/gamepad/GamePadFactory;
.super Ljava/lang/Object;
.source "GamePadFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V

    return-object v0
.end method

.method public static create(Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
