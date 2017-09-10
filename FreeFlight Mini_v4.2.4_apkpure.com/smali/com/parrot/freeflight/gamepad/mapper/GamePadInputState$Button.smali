.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
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
    name = "Button"
.end annotation


# instance fields
.field private mConsumed:I

.field private final mKeyCode:I

.field private mLastAction:I

.field private mPressed:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mKeyCode:I

    .line 641
    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mPressed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    .param p1, "x1"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mPressed:Z

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mPressed:Z

    .line 683
    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mConsumed:I

    .line 684
    return-void
.end method

.method public getConsumed()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mConsumed:I

    return v0
.end method

.method public getControlType()I
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mKeyCode:I

    return v0
.end method

.method public getLastAction()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mLastAction:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mPressed:Z

    return v0
.end method

.method public setConsumed(I)V
    .locals 0
    .param p1, "consumed"    # I

    .prologue
    .line 668
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mConsumed:I

    .line 669
    return-void
.end method

.method public setLastAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 663
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mLastAction:I

    .line 664
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;->mConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
