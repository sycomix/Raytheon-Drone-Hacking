.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)V
    .locals 3
    .param p1, "remote"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "TinosGamePad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$400(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$6;->$SwitchMap$com$parrot$freeflight3$RemoteController$ConnectionState:[I

    invoke-virtual {p2}, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$800(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$502(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    goto :goto_1

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$602(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    goto :goto_1

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$702(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    goto :goto_1

    .line 78
    :cond_1
    const-string v0, "TinosGamePad"

    const-string v1, "bad gamepad "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
