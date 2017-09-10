.class public Lcom/google/gdata/data/introspection/ServiceDocument;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ServiceDocument.java"

# interfaces
.implements Lcom/google/gdata/data/introspection/IServiceDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/introspection/ServiceDocument$Handler;
    }
.end annotation


# instance fields
.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field workspaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Workspace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/introspection/ServiceDocument;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/ServiceDocument;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addWorkspace(Ljava/lang/String;)Lcom/google/gdata/data/introspection/IWorkspace;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/introspection/ServiceDocument;->addWorkspace(Ljava/lang/String;)Lcom/google/gdata/data/introspection/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public addWorkspace(Ljava/lang/String;)Lcom/google/gdata/data/introspection/Workspace;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/google/gdata/data/introspection/Workspace;

    new-instance v1, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v1, p1}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gdata/data/introspection/Workspace;-><init>(Lcom/google/gdata/data/TextConstruct;)V

    .line 60
    .local v0, "workspace":Lcom/google/gdata/data/introspection/Workspace;
    iget-object v1, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public addWorkspace(Lcom/google/gdata/data/introspection/Workspace;)V
    .locals 1
    .param p1, "workspace"    # Lcom/google/gdata/data/introspection/Workspace;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 5
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "service"

    invoke-virtual {p1, v2, v3, v4, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 90
    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/introspection/Workspace;

    .line 91
    .local v1, "workspace":Lcom/google/gdata/data/introspection/Workspace;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/data/introspection/Workspace;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 93
    .end local v1    # "workspace":Lcom/google/gdata/data/introspection/Workspace;
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/introspection/ServiceDocument;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 97
    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "service"

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 145
    new-instance v0, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;-><init>(Lcom/google/gdata/data/introspection/ServiceDocument;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getWorkspaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Workspace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    new-instance v1, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;

    invoke-direct {v1, p0, p1}, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;-><init>(Lcom/google/gdata/data/introspection/ServiceDocument;Lcom/google/gdata/data/ExtensionProfile;)V

    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "service"

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public parse(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    new-instance v1, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;

    invoke-direct {v1, p0, p1}, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;-><init>(Lcom/google/gdata/data/introspection/ServiceDocument;Lcom/google/gdata/data/ExtensionProfile;)V

    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "service"

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->workspaceRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 3
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/introspection/Workspace;

    .line 70
    .local v1, "workspace":Lcom/google/gdata/data/introspection/Workspace;
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/data/introspection/ServiceDocument;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 72
    .end local v1    # "workspace":Lcom/google/gdata/data/introspection/Workspace;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 73
    return-void
.end method
