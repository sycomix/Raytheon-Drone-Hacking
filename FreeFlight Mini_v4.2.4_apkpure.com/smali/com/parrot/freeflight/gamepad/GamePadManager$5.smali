.class Lcom/parrot/freeflight/gamepad/GamePadManager$5;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
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
    .line 267
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChange(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$700(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 273
    .local v0, "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    new-instance v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    new-instance v3, Lcom/parrot/freeflight/gamepad/EventSender;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {v3, v4}, Lcom/parrot/freeflight/gamepad/EventSender;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-direct {v1, v0, v3}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/EventSender;)V

    .line 276
    .local v1, "virtualInputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$700(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "virtualInputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$800(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 280
    return-void
.end method
