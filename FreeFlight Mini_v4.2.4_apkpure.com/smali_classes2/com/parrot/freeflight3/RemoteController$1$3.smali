.class Lcom/parrot/freeflight3/RemoteController$1$3;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$1;->onBatteryChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/RemoteController$1;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/RemoteController$1;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$1$3;->this$1:Lcom/parrot/freeflight3/RemoteController$1;

    iput p2, p0, Lcom/parrot/freeflight3/RemoteController$1$3;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$1$3;->this$1:Lcom/parrot/freeflight3/RemoteController$1;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$1900(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    .line 268
    .local v0, "listener":Lcom/parrot/freeflight3/OnRemoteBatteryListener;
    iget v2, p0, Lcom/parrot/freeflight3/RemoteController$1$3;->val$level:I

    invoke-interface {v0, v2}, Lcom/parrot/freeflight3/OnRemoteBatteryListener;->onBatteryChange(I)V

    goto :goto_0

    .line 270
    .end local v0    # "listener":Lcom/parrot/freeflight3/OnRemoteBatteryListener;
    :cond_0
    return-void
.end method
