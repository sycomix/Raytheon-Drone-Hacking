.class public Lcom/google/gdata/data/batch/BatchUtils;
.super Ljava/lang/Object;
.source "BatchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declareEntryExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/batch/BatchId;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/batch/BatchOperation;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/batch/BatchInterrupted;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/batch/BatchStatus;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 69
    return-void
.end method

.method public static declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 41
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->declareEntryExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 42
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->declareFeedExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 43
    return-void
.end method

.method public static declareFeedExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 53
    const-class v0, Lcom/google/gdata/data/BaseFeed;

    invoke-static {}, Lcom/google/gdata/data/batch/BatchOperation;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 54
    return-void
.end method

.method public static getBatchId(Lcom/google/gdata/data/BaseEntry;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchId;->getIdFrom(Lcom/google/gdata/data/BaseEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatchInterrupted(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 130
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public static getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 2
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 104
    const-class v1, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    .line 105
    .local v0, "op":Lcom/google/gdata/data/batch/BatchOperation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBatchStatus(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchStatus;

    return-object v0
.end method

.method private static getRequiredBatchStatusCode(Lcom/google/gdata/data/ExtensionPoint;)I
    .locals 3
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchStatus(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchStatus;

    move-result-object v0

    .line 184
    .local v0, "batchStatus":Lcom/google/gdata/data/batch/BatchStatus;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a batch response entry; Missing BatchStatus extension."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/batch/BatchStatus;->getCode()I

    move-result v1

    return v1
.end method

.method public static isFailure(Lcom/google/gdata/data/ExtensionPoint;)Z
    .locals 1
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->isSuccess(Lcom/google/gdata/data/ExtensionPoint;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuccess(Lcom/google/gdata/data/ExtensionPoint;)Z
    .locals 2
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getRequiredBatchStatusCode(Lcom/google/gdata/data/ExtensionPoint;)I

    move-result v0

    .line 156
    .local v0, "code":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setBatchId(Lcom/google/gdata/data/ExtensionPoint;Ljava/lang/String;)V
    .locals 1
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Ljava/lang/Class;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/batch/BatchId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public static setBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 1
    .param p0, "extPoint"    # Lcom/google/gdata/data/ExtensionPoint;
    .param p1, "op"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Ljava/lang/Class;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/batch/BatchOperation;-><init>(Lcom/google/gdata/data/batch/BatchOperationType;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
