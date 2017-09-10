.class public Lcom/google/gdata/model/atompub/ServiceDocument;
.super Lcom/google/gdata/model/Element;
.source "ServiceDocument.java"

# interfaces
.implements Lcom/google/gdata/data/introspection/IServiceDocument;


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atompub/ServiceDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "service"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/atompub/ServiceDocument;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/ServiceDocument;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/gdata/model/atompub/ServiceDocument;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/ServiceDocument;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/ServiceDocument;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 74
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
            "Lcom/google/gdata/model/atompub/ServiceDocument;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/ServiceDocument;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 89
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 50
    sget-object v1, Lcom/google/gdata/model/atompub/ServiceDocument;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/ServiceDocument;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 58
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setRequired(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addWorkspace(Ljava/lang/String;)Lcom/google/gdata/data/introspection/IWorkspace;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/ServiceDocument;->addWorkspace(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public addWorkspace(Lcom/google/gdata/model/atompub/Workspace;)Lcom/google/gdata/model/atompub/ServiceDocument;
    .locals 0
    .param p1, "workspace"    # Lcom/google/gdata/model/atompub/Workspace;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 112
    return-object p0
.end method

.method public addWorkspace(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Workspace;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/google/gdata/model/atompub/Workspace;

    invoke-static {p1}, Lcom/google/gdata/model/atom/TextContent;->plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/model/atompub/Workspace;-><init>(Lcom/google/gdata/model/atom/TextContent;)V

    .line 145
    .local v0, "workspace":Lcom/google/gdata/model/atompub/Workspace;
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/ServiceDocument;->addWorkspace(Lcom/google/gdata/model/atompub/Workspace;)Lcom/google/gdata/model/atompub/ServiceDocument;

    .line 146
    return-object v0
.end method

.method public clearWorkspaces()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 130
    return-void
.end method

.method public getWorkspaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atompub/Workspace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasWorkspaces()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/ServiceDocument;->lock()Lcom/google/gdata/model/atompub/ServiceDocument;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/atompub/ServiceDocument;
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/ServiceDocument;

    return-object v0
.end method

.method public removeWorkspace(Lcom/google/gdata/model/atompub/Workspace;)Z
    .locals 1
    .param p1, "workspace"    # Lcom/google/gdata/model/atompub/Workspace;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method
