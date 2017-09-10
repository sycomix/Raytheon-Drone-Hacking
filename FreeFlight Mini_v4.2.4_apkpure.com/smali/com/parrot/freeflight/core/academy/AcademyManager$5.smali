.class Lcom/parrot/freeflight/core/academy/AcademyManager$5;
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
    .line 349
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    check-cast p2, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;->getService()Lcom/parrot/freeflight3/ARSocialNetworkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARSocialNetworkService;

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2000(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight3/ARSocialNetworkService;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/ARSocialNetworkService;->setYoutubeManagerListener(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V

    .line 354
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$5;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2002(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARSocialNetworkService;

    .line 359
    return-void
.end method
