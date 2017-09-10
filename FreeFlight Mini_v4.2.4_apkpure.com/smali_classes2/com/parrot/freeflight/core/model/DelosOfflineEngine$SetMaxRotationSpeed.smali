.class Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;
.super Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetMaxRotationSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;F)V
    .locals 2
    .param p2, "value"    # F

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    .line 94
    const/4 v0, 0x4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;-><init>(ILjava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->setMaxRotationSpeed(D)V

    .line 100
    return-void
.end method
