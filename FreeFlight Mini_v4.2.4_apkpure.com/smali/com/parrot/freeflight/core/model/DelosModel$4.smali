.class Lcom/parrot/freeflight/core/model/DelosModel$4;
.super Ljava/lang/Object;
.source "DelosModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/model/DelosModel;->onNewTemporaryAlert(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel$4;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$4;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$2200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/piloting/alert/Alert;

    move-result-object v0

    const/4 v1, -0x1

    const v2, 0x104000e

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(II)Z

    .line 2359
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$4;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 2360
    return-void
.end method
