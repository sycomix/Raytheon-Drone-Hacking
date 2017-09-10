.class public Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
.super Ljava/lang/Object;
.source "RunCollection.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/job/IJobHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunJobHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        ">;"
    }
.end annotation


# instance fields
.field mRunChecker:Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUuids:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunCollection;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunCollection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runChecker"    # Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    .line 384
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mRunChecker:Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/RunInformation;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->add(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/RunInformation;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->remove(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->size()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->clear()V

    return-void
.end method

.method private add(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 429
    return-void
.end method

.method private getOneRunInSet()Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 433
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 435
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .local v1, "uuid":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 437
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunCollection;->access$600(Lcom/parrot/freeflight/core/academy/RunCollection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    .line 439
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private remove(Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 416
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 420
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private size()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    return-object v0
.end method

.method public getJobCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getOne()Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getOneRunInSet()Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 397
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mRunChecker:Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;->checkRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    :goto_0
    return-object v0

    .restart local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getOne()Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    return-object v0
.end method

.method public rollBack(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->mRunChecker:Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;->checkRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->access$600(Lcom/parrot/freeflight/core/academy/RunCollection;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->add(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 405
    :cond_0
    return-void
.end method

.method public bridge synthetic rollBack(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 376
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->rollBack(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    return-void
.end method
