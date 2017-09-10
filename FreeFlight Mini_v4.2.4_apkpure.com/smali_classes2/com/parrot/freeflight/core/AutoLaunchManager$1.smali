.class Lcom/parrot/freeflight/core/AutoLaunchManager$1;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, v1, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, v1, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v0

    .line 38
    .local v0, "droneFlyingState":I
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$002(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkProductsFirmware()V

    .line 43
    .end local v0    # "droneFlyingState":I
    :cond_0
    return-void
.end method
