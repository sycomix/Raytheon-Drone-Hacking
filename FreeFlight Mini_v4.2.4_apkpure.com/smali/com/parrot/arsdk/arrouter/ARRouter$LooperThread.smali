.class Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;
.super Ljava/lang/Thread;
.source "ARRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method private constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arrouter/ARRouter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter;
    .param p2, "x1"    # Lcom/parrot/arsdk/arrouter/ARRouter$1;

    .prologue
    .line 2762
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2768
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2770
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->handler:Landroid/os/Handler;

    .line 2772
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2773
    return-void
.end method
