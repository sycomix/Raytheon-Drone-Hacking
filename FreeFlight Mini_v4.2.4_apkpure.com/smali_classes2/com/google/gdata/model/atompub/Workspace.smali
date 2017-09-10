.class public Lcom/google/gdata/model/atompub/Workspace;
.super Lcom/google/gdata/model/Element;
.source "Workspace.java"

# interfaces
.implements Lcom/google/gdata/data/introspection/IWorkspace;


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atompub/Workspace;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "workspace"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/atompub/Workspace;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 53
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/Workspace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/Workspace;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/Workspace;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/Workspace;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 0
    .param p1, "title"    # Lcom/google/gdata/model/atom/TextContent;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/gdata/model/atompub/Workspace;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/Workspace;->setTitle(Lcom/google/gdata/model/atom/TextContent;)V

    .line 102
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 60
    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 66
    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 67
    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setRequired(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/data/introspection/ICollection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/model/atompub/Workspace;->addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/model/atompub/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/model/atompub/Collection;
    .locals 2
    .param p1, "collectionUri"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "acceptedTypes"    # [Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Lcom/google/gdata/model/atompub/Collection;

    invoke-static {p2}, Lcom/google/gdata/model/atom/TextContent;->plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/google/gdata/model/atompub/Collection;-><init>(Ljava/lang/String;Lcom/google/gdata/model/atom/TextContent;[Ljava/lang/String;)V

    .line 129
    .local v0, "collection":Lcom/google/gdata/model/atompub/Collection;
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Workspace;->addCollection(Lcom/google/gdata/model/atompub/Collection;)V

    .line 130
    return-object v0
.end method

.method public addCollection(Lcom/google/gdata/model/atompub/Collection;)V
    .locals 1
    .param p1, "collection"    # Lcom/google/gdata/model/atompub/Collection;

    .prologue
    .line 119
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 120
    return-void
.end method

.method public getCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atompub/Collection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public hasCollections()Z
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public removeCollection(Lcom/google/gdata/model/atompub/Collection;)Z
    .locals 1
    .param p1, "collection"    # Lcom/google/gdata/model/atompub/Collection;

    .prologue
    .line 140
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 4
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    sget-object v3, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v3}, Lcom/google/gdata/model/atompub/Workspace;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, "titleAttribute":Ljava/lang/String;
    sget-object v3, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v3}, Lcom/google/gdata/model/atompub/Workspace;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    .line 186
    .local v0, "title":Lcom/google/gdata/model/atom/TextContent;
    if-eqz v1, :cond_2

    .line 187
    if-nez v0, :cond_1

    .line 188
    invoke-static {v1}, Lcom/google/gdata/model/atom/TextContent;->plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    .line 189
    sget-object v3, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v3, v0}, Lcom/google/gdata/model/atompub/Workspace;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 203
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v3

    return-object v3

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "titleContent":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {p2, p0, v3}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 198
    .end local v2    # "titleContent":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 200
    sget-object v3, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v3, v1}, Lcom/google/gdata/model/atompub/Workspace;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method public setTitle(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 2
    .param p1, "title"    # Lcom/google/gdata/model/atom/TextContent;

    .prologue
    .line 167
    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atompub/Workspace;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 168
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 169
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Workspace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/model/Element;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
