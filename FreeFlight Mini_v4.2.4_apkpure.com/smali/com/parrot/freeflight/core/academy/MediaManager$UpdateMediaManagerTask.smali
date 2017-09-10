.class Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;
.super Landroid/os/AsyncTask;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMediaManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/parrot/arsdk/armedia/ARMediaObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;Lcom/parrot/freeflight/core/academy/MediaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/academy/MediaManager$1;

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 705
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$900(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 705
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 715
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$002(Lcom/parrot/freeflight/core/academy/MediaManager;Z)Z

    .line 716
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$1000(Lcom/parrot/freeflight/core/academy/MediaManager;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$500(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 718
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$1100(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    .line 719
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/MediaManager$IListener;->localMediaUpdated()V

    goto :goto_0

    .line 722
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    :cond_0
    return-void
.end method
