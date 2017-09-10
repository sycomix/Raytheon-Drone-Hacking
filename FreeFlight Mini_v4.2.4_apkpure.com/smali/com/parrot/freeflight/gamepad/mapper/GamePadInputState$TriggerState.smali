.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;
.super Ljava/lang/Object;
.source "GamePadInputState.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TriggerState"
.end annotation


# static fields
.field private static final THRESHOLD:F = 0.8f


# instance fields
.field private final mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastAction:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mName:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;-><init>(IILcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .line 423
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .line 424
    return-void
.end method

.method private checkPressed(F)V
    .locals 2
    .param p1, "newValue"    # F

    .prologue
    .line 428
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->access$502(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;Z)Z

    .line 429
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->resetFlag()V

    .line 484
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$400(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 485
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->clear()V

    .line 486
    return-void
.end method

.method public getAxis()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    return-object v0
.end method

.method public getButton()Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    return-object v0
.end method

.method public getConsumed()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getConsumed()I

    move-result v0

    return v0
.end method

.method public getControlType()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x3

    return v0
.end method

.method public getLastAction()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mLastAction:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isHandle()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->access$500(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;)Z

    move-result v0

    return v0
.end method

.method public resetFlag()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->access$300(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V

    .line 480
    return-void
.end method

.method public setConsumed(I)V
    .locals 1
    .param p1, "consumed"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mButton:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->setConsumed(I)V

    .line 470
    return-void
.end method

.method public setLastAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 464
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mLastAction:I

    .line 465
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->checkPressed(F)V

    .line 434
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->setValue(F)V

    .line 435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TriggerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$TriggerState;->getConsumed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
