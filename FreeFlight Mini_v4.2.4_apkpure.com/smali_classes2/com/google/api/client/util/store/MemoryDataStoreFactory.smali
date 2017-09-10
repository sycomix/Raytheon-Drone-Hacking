.class public Lcom/google/api/client/util/store/MemoryDataStoreFactory;
.super Lcom/google/api/client/util/store/AbstractDataStoreFactory;
.source "MemoryDataStoreFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;,
        Lcom/google/api/client/util/store/MemoryDataStoreFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/api/client/util/store/AbstractDataStoreFactory;-><init>()V

    .line 49
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/client/util/store/MemoryDataStoreFactory;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/api/client/util/store/MemoryDataStoreFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/util/store/MemoryDataStoreFactory;

    return-object v0
.end method


# virtual methods
.method protected createDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/client/util/store/DataStore",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;-><init>(Lcom/google/api/client/util/store/MemoryDataStoreFactory;Ljava/lang/String;)V

    return-object v0
.end method
