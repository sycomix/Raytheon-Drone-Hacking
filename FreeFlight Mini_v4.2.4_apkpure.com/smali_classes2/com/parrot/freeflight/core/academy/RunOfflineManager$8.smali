.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkLocalPudFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->run()V

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$700(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 321
    return-void
.end method
