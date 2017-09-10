.class Lcom/parrot/freeflight/core/academy/AcademyManager$3;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    check-cast p2, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;->getService()Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "alreadyConnected":Z
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->isConnected()Z

    move-result v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$800(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->GetUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->onAcademyConnected(Lcom/parrot/arsdk/aracademy/ARAcademyManager;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 286
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$300(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1    # "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1300(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$900(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$900(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->cancel(Z)Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1002(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$402(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1102(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/util/List;)Ljava/util/List;

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    .line 270
    return-void
.end method
