.class Lcom/parrot/freeflight/home/HomeUIController$2;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$302(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget v2, v2, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$200(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/UserDrone;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$2;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$700(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 296
    :cond_1
    return-void
.end method
