.class public abstract Lcom/parrot/freeflight/utils/GenericSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "GenericSyncAdapter.java"


# instance fields
.field protected final mSyncables:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/util/sync/ISyncable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/utils/GenericSyncAdapter;->mSyncables:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/utils/GenericSyncAdapter;->mSyncables:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/update/UpdateSyncable;

    invoke-direct {v1}, Lcom/parrot/freeflight/update/UpdateSyncable;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/utils/GenericSyncAdapter;->mSyncables:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/util/dataCollect/DataCollectionSyncable;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/dataCollect/DataCollectionSyncable;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
