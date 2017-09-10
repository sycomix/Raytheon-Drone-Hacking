.class Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "BatchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/batch/BatchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchOperationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/batch/BatchOperation;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;->this$0:Lcom/google/gdata/data/batch/BatchOperation;

    .line 107
    const-class v3, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-direct {p0, p1, p2, v3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 108
    const-string v3, "type"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "operationType":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/gdata/data/batch/BatchOperationType;->forName(Ljava/lang/String;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    .line 110
    .local v0, "op":Lcom/google/gdata/data/batch/BatchOperationType;
    if-nez v0, :cond_0

    .line 111
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidBatchOperationType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 113
    .local v2, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type for batch:operation: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 115
    throw v2

    .line 117
    .end local v2    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_0
    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchOperation;->access$002(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/batch/BatchOperationType;)Lcom/google/gdata/data/batch/BatchOperationType;

    .line 118
    return-void
.end method
