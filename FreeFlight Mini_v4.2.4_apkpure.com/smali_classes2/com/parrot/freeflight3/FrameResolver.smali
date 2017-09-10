.class Lcom/parrot/freeflight3/FrameResolver;
.super Ljava/lang/Object;
.source "FrameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/FrameResolver$RemoteState;,
        Lcom/parrot/freeflight3/FrameResolver$Listener;,
        Lcom/parrot/freeflight3/FrameResolver$Button;
    }
.end annotation


# static fields
.field private static final FRAME_LENGTH:I = 0x7

.field private static final TAG:Ljava/lang/String; = "FrameResolver"


# instance fields
.field private final mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

.field private final mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

.field private final mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight3/FrameResolver$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/FrameResolver$Listener;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-direct {v0}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    .line 12
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-direct {v0}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    .line 93
    return-void
.end method

.method private logFrame([B)V
    .locals 5
    .param p1, "frame"    # [B

    .prologue
    .line 177
    const-string v2, "FrameResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logFrame size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const-string v2, "FrameResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logFrame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private sendRemoteEvent()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    if-eq v2, v4, :cond_1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    iget-object v5, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v5, v5, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    iget-object v6, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v6, v6, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    iget-object v7, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v7, v7, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/parrot/freeflight3/FrameResolver$Listener;->onRemoteJoystickEvent(IIII)V

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    iget-object v4, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v4, v4, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    if-eq v2, v4, :cond_4

    .line 142
    invoke-static {}, Lcom/parrot/freeflight3/FrameResolver$Button;->values()[Lcom/parrot/freeflight3/FrameResolver$Button;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 143
    .local v0, "button":Lcom/parrot/freeflight3/FrameResolver$Button;
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    invoke-static {v0}, Lcom/parrot/freeflight3/FrameResolver$Button;->access$000(Lcom/parrot/freeflight3/FrameResolver$Button;)I

    move-result v7

    and-int v1, v2, v7

    .line 144
    .local v1, "pressed":I
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    invoke-static {v0}, Lcom/parrot/freeflight3/FrameResolver$Button;->access$000(Lcom/parrot/freeflight3/FrameResolver$Button;)I

    move-result v7

    and-int/2addr v2, v7

    if-eq v1, v2, :cond_2

    .line 145
    iget-object v7, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    invoke-static {v0}, Lcom/parrot/freeflight3/FrameResolver$Button;->access$100(Lcom/parrot/freeflight3/FrameResolver$Button;)I

    move-result v8

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v7, v8, v2}, Lcom/parrot/freeflight3/FrameResolver$Listener;->onRemoteButtonEvent(II)V

    .line 146
    const-string v2, "FrameResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRemoteEvent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/parrot/freeflight3/FrameResolver$Button;->access$200(Lcom/parrot/freeflight3/FrameResolver$Button;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 145
    goto :goto_1

    .line 151
    .end local v0    # "button":Lcom/parrot/freeflight3/FrameResolver$Button;
    .end local v1    # "pressed":I
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-byte v2, v2, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    iget-object v3, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-byte v3, v3, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    if-eq v2, v3, :cond_5

    .line 152
    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    iget-object v3, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-byte v3, v3, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v2, v3}, Lcom/parrot/freeflight3/FrameResolver$Listener;->onBatteryChange(I)V

    .line 155
    :cond_5
    return-void
.end method


# virtual methods
.method public onFrameReceived([B)V
    .locals 8
    .param p1, "frame"    # [B

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x7f

    const/16 v5, -0x7f

    const/16 v4, -0x80

    const/4 v3, 0x1

    .line 100
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    iput v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v5, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    neg-int v1, v1

    iput v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v6, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    iput v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v5, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    neg-int v1, v1

    iput v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v6, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-boolean v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->cleanFrame:Z

    if-nez v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    invoke-interface {v0, v3}, Lcom/parrot/freeflight3/FrameResolver$Listener;->onFramePresenceChange(Z)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput-boolean v3, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->cleanFrame:Z

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-object v1, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 121
    invoke-direct {p0}, Lcom/parrot/freeflight3/FrameResolver;->sendRemoteEvent()V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-object v1, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->set(Lcom/parrot/freeflight3/FrameResolver$RemoteState;)V

    .line 123
    const-string v0, "FrameResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    :goto_0
    return-void

    .line 126
    :cond_6
    const-string v0, "FrameResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corrupted frame received, length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight3/FrameResolver;->reset()V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-object v1, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-byte v1, v1, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    iput-byte v1, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->battery:B

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->buttons:I

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickX:I

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->leftJoystickY:I

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickX:I

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->rightJoystickY:I

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-boolean v0, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->cleanFrame:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mListener:Lcom/parrot/freeflight3/FrameResolver$Listener;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight3/FrameResolver$Listener;->onFramePresenceChange(Z)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iput-boolean v2, v0, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->cleanFrame:Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-object v1, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/parrot/freeflight3/FrameResolver;->sendRemoteEvent()V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver;->mPreviousState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    iget-object v1, p0, Lcom/parrot/freeflight3/FrameResolver;->mCurrentState:Lcom/parrot/freeflight3/FrameResolver$RemoteState;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/FrameResolver$RemoteState;->set(Lcom/parrot/freeflight3/FrameResolver$RemoteState;)V

    .line 174
    :cond_1
    return-void
.end method
