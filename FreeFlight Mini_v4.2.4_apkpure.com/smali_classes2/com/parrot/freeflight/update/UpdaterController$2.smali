.class Lcom/parrot/freeflight/update/UpdaterController$2;
.super Ljava/lang/Object;
.source "UpdaterController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadListChange(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    .local p2, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$300(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$300(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_GAMEPAD_LIST_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 688
    return-void
.end method
