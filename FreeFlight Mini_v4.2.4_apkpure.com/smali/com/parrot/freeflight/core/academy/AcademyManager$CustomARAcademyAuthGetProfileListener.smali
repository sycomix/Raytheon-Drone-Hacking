.class Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomARAcademyAuthGetProfileListener"
.end annotation


# instance fields
.field private mHolder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V
    .locals 0
    .param p2, "holder"    # Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;->mHolder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;Lcom/parrot/freeflight/core/academy/AcademyManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;
    .param p3, "x2"    # Lcom/parrot/freeflight/core/academy/AcademyManager$1;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V

    return-void
.end method


# virtual methods
.method public onAuthGetProfileResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 7
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 374
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v1, :cond_0

    .line 375
    move-object v0, p2

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$CustomARAcademyAuthGetProfileListener;->mHolder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    aput-object v5, v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    .local v0, "prof":Ljava/lang/Object;
    goto :goto_0
.end method
