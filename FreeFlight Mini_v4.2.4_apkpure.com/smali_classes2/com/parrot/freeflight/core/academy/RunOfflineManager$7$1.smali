.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->onAuthGetRunsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

.field final synthetic val$modelArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->val$modelArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v1, v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->val$requestDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->val$modelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/RunCollection;->mergeServerRunList(Ljava/util/Date;Ljava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;->onChange()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$800(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$7;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 237
    :cond_1
    return-void
.end method
