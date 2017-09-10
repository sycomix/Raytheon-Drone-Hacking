.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->val$listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunSummaryList()Ljava/util/List;

    move-result-object v0

    .line 418
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10$1;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method
