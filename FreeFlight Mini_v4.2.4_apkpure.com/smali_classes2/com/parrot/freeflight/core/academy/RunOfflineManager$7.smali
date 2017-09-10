.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkAcademyServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

.field final synthetic val$requestDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->val$requestDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "modelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;-><init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1302(Lcom/parrot/freeflight/core/academy/RunOfflineManager;I)I

    .line 241
    return-void
.end method
