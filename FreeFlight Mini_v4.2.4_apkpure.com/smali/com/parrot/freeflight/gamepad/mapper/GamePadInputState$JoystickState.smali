.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;
.super Ljava/lang/Object;
.source "GamePadInputState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JoystickState"
.end annotation


# instance fields
.field private final mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;-><init>(IILcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .line 245
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;-><init>(IILcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->resetFlag()V

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$400(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$400(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 262
    return-void
.end method

.method public getAxis(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 292
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAxisX()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    return-object v0
.end method

.method public getAxisY()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    return-object v0
.end method

.method public isHandle()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetFlag()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$300(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$300(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 251
    return-void
.end method

.method public setConsumed(I)V
    .locals 1
    .param p1, "consumed"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setConsumed(I)V

    .line 300
    return-void
.end method

.method public setValue(FF)V
    .locals 1
    .param p1, "valueX"    # F
    .param p2, "valueY"    # F

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setValue(F)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setValue(F)V

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "valueX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " valueY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mThresholdX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisX:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .line 267
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mThresholdY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$JoystickState;->mAxisY:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getReachedThresholdDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    return-object v0
.end method
