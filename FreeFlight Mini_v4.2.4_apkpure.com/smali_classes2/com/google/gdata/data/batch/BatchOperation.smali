.class public Lcom/google/gdata/data/batch/BatchOperation;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "BatchOperation.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;
    }
.end annotation


# instance fields
.field private type:Lcom/google/gdata/data/batch/BatchOperationType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/batch/BatchOperationType;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchOperation;
    .param p1, "x1"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    return-object p1
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 58
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 59
    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 60
    const-string v1, "operation"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    invoke-virtual {v2}, Lcom/google/gdata/data/batch/BatchOperationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 87
    :cond_0
    sget-object v2, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "operation"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/batch/BatchOperation;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/batch/BatchOperation;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 92
    sget-object v0, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "operation"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;-><init>(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getType()Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    return-object v0
.end method

.method public setType(Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/batch/BatchOperationType;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchOperation;->type:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 76
    return-void
.end method
