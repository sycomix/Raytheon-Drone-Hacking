.class Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;
.super Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCutOutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;Z)V
    .locals 2
    .param p2, "value"    # Z

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    .line 137
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;-><init>(ILjava/lang/Object;)V

    .line 138
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->setCutOutState(Z)V

    .line 143
    return-void
.end method
