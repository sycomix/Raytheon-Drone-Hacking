.class Lcom/parrot/freeflight3/FrameResolver$RemoteState;
.super Ljava/lang/Object;
.source "FrameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/FrameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteState"
.end annotation


# instance fields
.field battery:B

.field buttons:I

.field cleanFrame:Z

.field leftJoystickX:I

.field leftJoystickY:I

.field rightJoystickX:I

.field rightJoystickY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->cleanFrame:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 82
    :cond_1
    :goto_0
    return v1

    .line 76
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    .line 82
    .local v0, "that":Lcom/parrot/freeflight3/FrameResolver$RemoteState;
    iget v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    iget v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    iget v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    iget v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    iget v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    iget v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    if-ne v3, v4, :cond_3

    iget-byte v3, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    iget-byte v4, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    if-eq v3, v4, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public set(Lcom/parrot/freeflight3/FrameResolver$RemoteState;)V
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    .prologue
    .line 55
    iget v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    iput v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    .line 56
    iget v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    iput v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    .line 57
    iget v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    iput v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    .line 58
    iget v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    iput v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    .line 59
    iget v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    iput v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    .line 60
    iget-byte v0, p1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    iput-byte v0, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left joy: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") right joy: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") buttons: + (b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")  (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
