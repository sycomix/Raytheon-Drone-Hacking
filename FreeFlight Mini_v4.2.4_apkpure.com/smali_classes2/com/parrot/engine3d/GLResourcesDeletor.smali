.class public Lcom/parrot/engine3d/GLResourcesDeletor;
.super Ljava/lang/Object;
.source "GLResourcesDeletor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mObjectNeedingResourcesDeletion:Lcom/parrot/engine3d/IGLResources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/IGLResources;)V
    .locals 0
    .param p1, "objectNeedingResourcesDeletion"    # Lcom/parrot/engine3d/IGLResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/parrot/engine3d/GLResourcesDeletor;->mObjectNeedingResourcesDeletion:Lcom/parrot/engine3d/IGLResources;

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/engine3d/GLResourcesDeletor;->mObjectNeedingResourcesDeletion:Lcom/parrot/engine3d/IGLResources;

    invoke-interface {v0}, Lcom/parrot/engine3d/IGLResources;->deleteGLResources()V

    .line 18
    return-void
.end method
