.class Lcom/parrot/freeflight/gamepad/GamePadManager$2;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 7
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$200(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    .line 91
    .local v2, "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    const-string v4, "FFMini.GamePad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRemoteCtrlModelChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v2, :cond_1

    .line 93
    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadFactory;->create(Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 94
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_1

    .line 95
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 98
    .local v1, "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    .line 100
    .end local v1    # "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_0
    new-instance v3, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    new-instance v4, Lcom/parrot/freeflight/gamepad/EventSender;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/gamepad/EventSender;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-direct {v3, v0, v4}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/EventSender;)V

    .line 101
    .local v3, "virtualInputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 105
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v3    # "virtualInputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_1
    return-void
.end method
