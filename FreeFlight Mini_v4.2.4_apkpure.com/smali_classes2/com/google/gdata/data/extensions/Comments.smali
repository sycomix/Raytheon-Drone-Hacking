.class public Lcom/google/gdata/data/extensions/Comments;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Comments.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Comments$Handler;
    }
.end annotation


# instance fields
.field protected feedLink:Lcom/google/gdata/data/extensions/FeedLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 92
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 52
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 53
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 54
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 56
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
    const/4 v4, 0x0

    .line 71
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "comments"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Comments;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/FeedLink;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Comments;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 80
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "comments"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 88
    new-instance v0, Lcom/google/gdata/data/extensions/Comments$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Comments$Handler;-><init>(Lcom/google/gdata/data/extensions/Comments;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public setFeedLink(Lcom/google/gdata/data/extensions/FeedLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "v":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/Comments;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 65
    return-void
.end method
