.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->start()V
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
    .line 356
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 359
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "academy_shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 360
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "academy_username"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "savedUserName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->setUserName(Ljava/lang/String;)V

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 363
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkAcademyServer()V

    .line 364
    return-void
.end method
