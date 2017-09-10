.class public interface abstract Lcom/parrot/engine3d/IGLResources;
.super Ljava/lang/Object;
.source "IGLResources.java"


# virtual methods
.method public abstract areResourcesCreated()Z
.end method

.method public abstract createGLResources(Landroid/content/res/Resources;)Z
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract deleteGLResources()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract markResourcesCreated(Z)V
.end method

.method public abstract updateResources(Landroid/content/res/Resources;)V
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
