.class Lcom/parrot/freeflight3/RemoteController$1;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Lcom/parrot/freeflight3/FrameResolver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/RemoteController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryChange(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight3/RemoteController;->access$1802(Lcom/parrot/freeflight3/RemoteController;I)I

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$1$3;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight3/RemoteController$1$3;-><init>(Lcom/parrot/freeflight3/RemoteController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public onFramePresenceChange(Z)V
    .locals 2
    .param p1, "present"    # Z

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    const-string v0, "RemoteController"

    const-string v1, "onFramePresenceChange STATE_CONNECTED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_CONNECTED:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$202(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$300(Lcom/parrot/freeflight3/RemoteController;)V

    .line 285
    return-void

    .line 281
    :cond_0
    const-string v0, "RemoteController"

    const-string v1, "onFramePresenceChange STATE_CONNECTING "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_CONNECTING:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$202(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    goto :goto_0
.end method

.method public onRemoteButtonEvent(II)V
    .locals 2
    .param p1, "remoteCode"    # I
    .param p2, "action"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight3/RemoteController$1$1;-><init>(Lcom/parrot/freeflight3/RemoteController$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public onRemoteJoystickEvent(IIII)V
    .locals 7
    .param p1, "leftJoystickX"    # I
    .param p2, "leftJoystickY"    # I
    .param p3, "rightJoystickX"    # I
    .param p4, "rightJoystickY"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/parrot/freeflight3/RemoteController$1$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/RemoteController$1$2;-><init>(Lcom/parrot/freeflight3/RemoteController$1;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method
