.class public Lcom/google/gdata/model/batch/BatchOperation;
.super Lcom/google/gdata/model/Element;
.source "BatchOperation.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/batch/BatchOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Lcom/google/gdata/data/batch/BatchOperationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "operation"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/batch/BatchOperation;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 44
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "type"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/batch/BatchOperationType;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchOperation;->TYPE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/gdata/model/batch/BatchOperation;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchOperation;->setType(Lcom/google/gdata/data/batch/BatchOperationType;)Lcom/google/gdata/model/batch/BatchOperation;

    .line 74
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 51
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 56
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 106
    if-ne p0, p1, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchOperation;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/google/gdata/model/batch/BatchOperation;

    .line 113
    .local v0, "other":Lcom/google/gdata/model/batch/BatchOperation;
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/model/batch/BatchOperation;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getType()Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/gdata/model/batch/BatchOperation;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchOperation;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperationType;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 119
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/data/batch/BatchOperationType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 122
    :cond_0
    return v0
.end method

.method public setType(Lcom/google/gdata/data/batch/BatchOperationType;)Lcom/google/gdata/model/batch/BatchOperation;
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 91
    sget-object v0, Lcom/google/gdata/model/batch/BatchOperation;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchOperation;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 92
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BatchOperation type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchOperation;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
