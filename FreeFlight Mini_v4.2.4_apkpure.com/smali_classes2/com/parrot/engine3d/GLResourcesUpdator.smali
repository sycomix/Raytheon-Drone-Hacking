.class public Lcom/parrot/engine3d/GLResourcesUpdator;
.super Ljava/lang/Object;
.source "GLResourcesUpdator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mObjectNeedingResourcesCreation:Lcom/parrot/engine3d/IGLResources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/IGLResources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "objectNeedingResourcesCreation"    # Lcom/parrot/engine3d/IGLResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/parrot/engine3d/GLResourcesUpdator;->mRes:Landroid/content/res/Resources;

    .line 16
    iput-object p2, p0, Lcom/parrot/engine3d/GLResourcesUpdator;->mObjectNeedingResourcesCreation:Lcom/parrot/engine3d/IGLResources;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/engine3d/GLResourcesUpdator;->mObjectNeedingResourcesCreation:Lcom/parrot/engine3d/IGLResources;

    iget-object v1, p0, Lcom/parrot/engine3d/GLResourcesUpdator;->mRes:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/IGLResources;->updateResources(Landroid/content/res/Resources;)V

    .line 23
    return-void
.end method
