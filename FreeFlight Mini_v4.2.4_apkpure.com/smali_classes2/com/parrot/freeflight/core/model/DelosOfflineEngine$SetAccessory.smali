.class Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;
.super Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAccessory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;I)V
    .locals 2
    .param p2, "accessory"    # I

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    .line 121
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;-><init>(ILjava/lang/Object;)V

    .line 122
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$100(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;I)Z

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->setAccessory(I)V

    .line 130
    :cond_0
    return-void
.end method
